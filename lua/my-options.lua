vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.termguicolors = true                    -- set term gui colors for more color options (most terminals support this)
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true
vim.opt.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}

vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab

vim.opt.laststatus = 3                          -- only the last window will always have a status line
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full:lastused,full:lastused"

vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.undofile = true                         -- enable persistent undo

vim.opt.wrap = true                             -- wrop lines around 
vim.opt.linebreak = true                        -- don't break up words at end of line
vim.opt.breakindent = true

vim.opt.scrolloff = 8                           -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8                       -- minimal number of screen columns to keep to the left and right of the cursor if wrap is `false`

vim.opt.cursorline = true                       -- highlight the current line
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim

vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window

vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.g.netrw_winsize = -30                       -- make X columns wide

-- vim.g.netrw_liststyle = 3                    -- tree style listing for explorer (not showing significant difference and causes nvim to stay frozen)
