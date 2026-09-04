require('blink.cmp').setup({
  keymap = { 
	  preset = 'default',
	  ['<CR>'] = { 'accept', 'fallback'
	  }	
  }, 
  appearance = {
    nerd_font_variant = 'mono'
  },
  completion = {
	  list = {
		  max_items = 10,

		  selection = {
			  preselect = true,
			  auto_insert = true
		  }
	  },
	  documentation = { auto_show = false }
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = {
    implementation = "prefer_rust_with_warning"
  },
  cmdline = {
--	  completion = {
--		  keymap = { preset = 'inherit'},
--		  completion = { menu = { auto_show = true }},
--	  }
  },
 -- signature = { enabled = true }
})
