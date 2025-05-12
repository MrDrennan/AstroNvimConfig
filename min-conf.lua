require "my-options"
require "my-keymaps"

--vim.cmd "colorscheme blue"
vim.cmd "colorscheme lunaperche"
vim.api.nvim_set_hl(0, 'LineNr', { fg='#7f87ae' })

-- Can switch line number characters that represent blank lines at end of buffer. Use space to remove tilde (~)
vim.opt.fillchars='eob: '
vim.opt.autochdir = true

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

keymap("n", "<leader>e", ":Lex<CR>", opts)
