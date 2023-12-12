require("core.mappings")
require("core.plugins")

is_dark_mode = true
function toggle_theme()
  print("toggle")
  if is_dark_mode then
    -- Switch to light theme
    vim.cmd("colorscheme catppuccin-latte ")
    is_dark_mode = false
  else
    -- Switch to dark theme
    vim.cmd("colorscheme catppuccin-mocha ")
    is_dark_mode = true
  end
end 

vim.api.nvim_create_user_command('ToggleTheme', toggle_theme, {})
vim.api.nvim_set_keymap('n', '<leader>tt', ':ToggleTheme<CR>', { noremap = true, silent = true })
