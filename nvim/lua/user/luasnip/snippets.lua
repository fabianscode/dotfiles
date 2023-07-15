--from https://sbulav.github.io/vim/neovim-setting-up-luasnip/
local luasnip = require "luasnip"

local snip = luasnip.snippet
local text = luasnip.text_node
local insert = luasnip.insert_node

luasnip.add_snippets(nil, {
	all = {
		snip({
			trig = "{",
			namr = "open_brackets",
			dscr = "open brackets with cursor positioning"
		}, {
			text({ "{", "    " }),
			insert(1, "statement"),
			text({ "", "}" })
		}),
		snip({
			trig = "entry",
			namr = "new entry",
			dscr = "create new entry"
		}, {
			insert(1, "XY"),
			text({ "/" }),
			insert(2, "2023"),
			text({ "-0" }),
			insert(3, "M"),
			text({ "-" }),
			insert(4, "DD"),
			text({ ": ", "" }),
			text({ "Frage: ", "" }),
			insert(5, "<Frage>"),
			text({ "", "", "" }),
			text({ "Antwort: ", "" }),
			insert(6, "<Antwort>"),
		}),
	},
	c = {
	    snip({
	        trig = "malloc",
			namr = "malloc w check",
			dscr = "malloc with NULL check"
	    }, {
			insert(1, "type"),
			text({ "* " }),
			insert(2, "name"),
			text({ " = (" }),
			insert(3, "type"),
			text({ "*) malloc(sizeof(" }),
			insert(4, "type"),
			text({ ") * " }),
			insert(5, "x"),
			text({ ");", "", "" }),
			text({ "if (" }),
			insert(6, "name"),
			text({ " == NULL) {", "    " }),
			text({ "fprintf(stderr, \"Out of memory\\n\");", "" }),
			text({ "}", "", "" }),
			insert(7, "statement"),
			text({ "", "", "" }),
			text({ "free(" }),
			insert(8, "name"),
			text({ ");" }),
	    })
	}
})
