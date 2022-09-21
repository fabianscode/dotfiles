--from https://sbulav.github.io/vim/neovim-setting-up-luasnip/
local luasnip = require "luasnip"

local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

local date = function()
	return {
		os.date('%Y-%m-%d')
	}
end

luasnip.add_snippets(nil, {
	all = {
		snip({
			trig = "date",
			namr = "Date",
			dscr = "Date in the form of YYYY-MM-DD",
		}, {
			func(date, {}),
		}),
		snip({
			trig = "meta",
			namr = "Metadata",
			dscr = "Yaml metadata format for markdown"
		},
			{
				text({ "---",
					"title: " }), insert(1, "note_title"), text({ "",
					"author: " }), insert(2, "author"), text({ "",
					"date: " }), func(date, {}), text({ "",
					"categories: [" }), insert(3, ""), text({ "]",
					"lastmod: " }), func(date, {}), text({ "",
					"tags: [" }), insert(4), text({ "]",
					"comments: true",
					"---", "" }),
				insert(0)
			}),
		snip({
			trig = "link",
			namr = "markdown_link",
			dscr = "Create markdown link [txt](url)"
		},
			{
				text('['),
				insert(1),
				text(']('),
				func(function(_, s)
					return s.env.TM_SELECTED_TEXT[1] or {}
				end, {}),
				text(')'),
				insert(0),
			}),
	},
})
