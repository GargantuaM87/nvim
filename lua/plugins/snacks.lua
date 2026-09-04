-- lua/plugins/snacks.lua
local ok, snacks = pcall(require, "snacks")
if not ok then
  return
end

-- Explicitly mount the core plugin configurations
snacks.setup({ 
  input = {
    enabled = true,
    icon = "📝",
    win = { style = "input" },
    expand = true,
		},
  dashboard = {
		  sections = {
    { section = "header" },
    { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
    --{ section = "startup" },
		},
  },
  terminal = {
		win = { style = "terminal" },
		styles = {
      notification = { backdrop = false },
      float = { backdrop = false }, 
    }
  }
})

-- Forcibly assign Neovim's global UI handler to snacks
vim.ui.input = function(opts, on_confirm)
  snacks.input(opts, on_confirm)
end

