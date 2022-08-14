local api = vim.api

api.nvim_create_autocmd({"BufWinEnter"}, {
    pattern = "*.tex",
    callback = function()
        vim.cmd("Goyo")
    end
})
