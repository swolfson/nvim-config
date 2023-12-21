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

function toggle_neo_tree()
    if vim.bo.filetype == "neo-tree" then 
	-- Move to the next window to the right
        vim.cmd("wincmd l")
    else 
	-- toggle neo tree
	vim.cmd("Neotree")
    end
end

-- general editor settings
vim.wo.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--key mapping
vim.api.nvim_create_user_command('ToggleTheme', toggle_theme, {})
vim.api.nvim_set_keymap('n', '<leader>tt', ':ToggleTheme<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':lua toggle_neo_tree()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', ':Neotree focus toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nt', ':+tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pt', ':-tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pt', ':-tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':buffer<space>', { noremap = true, silent = true })



