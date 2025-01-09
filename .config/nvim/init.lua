require("config.lazy")

-- File explorer changes
-- 	- https://shapeshed.com/vim-netrw/ 

vim.g.netrw_banner = 0 		-- Remove File Explorer Banner
vim.g.netrw_liststyle = 3  	-- File explorer tree

vim.cmd.colorscheme "elflord"

vim.cmd.syntax "enable"
vim.cmd.filetype "plugin indent on"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.number = true
vim.opt.ruler = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wildmode = "longest,list"

-- Tab shortcuts
vim.keymap.set('n', '<F3>', ":tabp<CR>")
vim.keymap.set('n', '<F4>', ":tabn<CR>")
vim.keymap.set('n', '<F5>', ":tabnew<CR>")
