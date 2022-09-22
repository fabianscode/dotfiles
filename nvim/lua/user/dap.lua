local function mysplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

local dap = require("dap")

-- for c and cpp
dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "/home/fabiancodes/tools/cpptools-linux/extension/debugAdapters/bin/OpenDebugAD7",
}


dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
		args = function()
			return mysplit(vim.fn.input("Params: "), ";")
		end
	},
	{
		name = "Attach to gdbserver :1234",
		type = "cppdbg",
		request = "launch",
		MIMode = "gdb",
		miDebuggerServerAddress = "localhost:1234",
		miDebuggerPath = "/usr/bin/gdb",
		cwd = "${workspaceFolder}",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false
			},
		},
		args = function()
			return mysplit(vim.fn.input("Params: "), ";")
		end

	},
}

dap.configurations.c = dap.configurations.cpp

dap.configurations.rust = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
	},
	{
		name = "Attach to gdbserver :1234",
		type = "cppdbg",
		request = "launch",
		MIMode = "gdb",
		miDebuggerServerAddress = "localhost:1234",
		miDebuggerPath = "/usr/bin/gdb",
		cwd = "${workspaceFolder}",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false
			},
		},
	},
}


-- for python
dap.adapters.python = {
	type = "executable";
	command = "/usr/bin/python3";
	args = { "-m", "debugpy.adapter" };
}


dap.configurations.python = {
	{
		-- The first three options are required by nvim-dap
		type = "python"; -- the type here established the link to the adapter definition: `dap.adapters.python`
		request = "launch";
		name = "Launch file";

		-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

		program = "${file}"; -- This configuration will launch the current file if used.
		pythonPath = function()
			-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
			-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
			-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
			local cwd = vim.fn.getcwd()
			if vim.fn.executable(cwd .. "/venv/bin/python3") == 1 then
				return cwd .. "/venv/bin/python3"
			elseif vim.fn.executable(cwd .. "/.venv/bin/python3") == 1 then
				return cwd .. "/.venv/bin/python3"
			else
				return "/usr/bin/python3"
			end
		end;
	},
}

--------------------------------------------------------------------------------------------------------

local dapui = require("dapui")

dapui.setup({
	icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
	mappings = {
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	expand_lines = false,
	layouts = {
		{
			elements = {
				"scopes",
			},
			size = 0.25,
			position = "left",
		},
		{
			elements = {
				"console",
			},
			size = 0.25,
			position = "bottom",
		},
	},
	floating = {
		max_height = nil,
		max_width = nil,
		border = "single",
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
	render = {
		max_type_length = nil,
		max_value_lines = 100,
	}
})

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

require("nvim-dap-virtual-text").setup {
	enabled = true,
	enabled_commands = true,
	highlight_changed_variables = true,
	highlight_new_as_changed = true,
	show_stop_reason = true,
	commented = false,
	only_first_definition = true,
	all_references = false,
	filter_references_pattern = "<module",
	virt_text_pos = "right_align",
	all_frames = false,
	virt_lines = false,
	virt_text_win_col = nil
}

local api = vim.api
local keymap_restore = {}
dap.listeners.after["event_initialized"]["me"] = function()
	for _, buf in pairs(api.nvim_list_bufs()) do
		local keymaps = api.nvim_buf_get_keymap(buf, "n")
		for _, keymap in pairs(keymaps) do
			if keymap.lhs == "Q" then
				table.insert(keymap_restore, keymap)
				api.nvim_buf_del_keymap(buf, "n", "Q")
			end
		end
	end
	api.nvim_set_keymap(
		"n", "Q", "<Cmd>lua require(\"dap.ui.widgets\").hover()<CR>", { silent = true })
end

dap.listeners.after["event_terminated"]["me"] = function()
	for _, keymap in pairs(keymap_restore) do
		api.nvim_buf_set_keymap(
			keymap.buffer,
			keymap.mode,
			keymap.lhs,
			keymap.rhs,
			{ silent = keymap.silent == 1 }
		)
	end
	keymap_restore = {}
end

vim.fn.sign_define("DapBreakpoint", { text = "B‣", texthl = "", linehl = "", numhl = "" })

require('persistent-breakpoints').setup {}
vim.api.nvim_create_autocmd({ "BufReadPost" }, { callback = require('persistent-breakpoints.api').load_breakpoints })
