-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- NORMAL --

-- possible keys available: backspace, arrow keys, \, ;, ",", tab
--
-- Keys not needed:
-- M: put cursor on middle line of screen
-- L: put cursor on # of lines from the bottom of file

-- Move fast vertically
keymap("n", "-", "5-zz", opts)
keymap("n", "<Enter>", "5<Enter>zz", opts)

-- Don't reach just to move right 
keymap("n", "n", "l", opts)
keymap("n", "l", "n", opts)
keymap("n", "N", "L", opts)
keymap("n", "L", "N", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-n>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-n>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete<CR>", opts)

-- make clozure deletion (for anki)
keymap("n", "<leader>cd", "ciW{{c1::<C-r>\"}}<Esc>T:")

-- delete closure deletion (for anki)
keymap("n", "<leader>dcd", "T:2dF{f}xxb")

-- VISUAL --

-- Better paste
keymap("v", "p", '"_dP', opts)

keymap("v", "n", "l", opts)
keymap("v", "l", "n", opts)
keymap("v", "N", "L", opts)
keymap("v", "L", "N", opts)

keymap("v", ",.", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- INSERT --

-- Press ,. in sequence to escape 
keymap("i", ",.", "<ESC>", opts)
