require("config.lazy")

-- File explorer changes
-- 	- https://shapeshed.com/vim-netrw/ 

vim.g.netrw_banner = 0 		-- Remove File Explorer Banner
vim.g.netrw_liststyle = 3  	-- File explorer tree

vim.opt.termguicolors = true

-- vim.cmd.colorscheme "elflord"
vim.cmd.colorscheme "cyberdream"
-- vim.cmd.colorscheme "catppuccin" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

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

-- Disable zig formatting as long as android has the bug
vim.g.zig_fmt_autosave = 0

vim.lsp.config['zls'] = {
  cmd = { 'zls' },
  filetypes = { 'zig' },
  root_markers = { 'build.zig', 'build.zig.zon' , '.git' },
}

 vim.lsp.enable('zls')
