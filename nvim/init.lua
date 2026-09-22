vim.loader.enable()


-- General vim config
vim.o.encoding = 'utf-8'
vim.o.mouse = 'a'
vim.o.background = 'dark'
vim.o.number = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true

vim.opt.guicursor = {
  "n-v-c:block-Cursor/lCursor",         -- Block in Normal, Visual, Command modes
  "i-ci-ve:ver25-Cursor/lCursor",       -- Vertical bar (25% width) in Insert mode
  "r-cr:hor20",                         -- Horizontal bar in Replace mode
  "o:hor50",                            -- Operator-pending mode
  "a:blinkwait700-blinkoff400-blinkon250", -- Enable blinking globally
  "sm:block-blinkwait175-blinkoff150-blinkon175" -- Showmatch
}

local data_dir = vim.fn.stdpath("data")
local state_dir = vim.fn.stdpath("state")

vim.opt.backupdir = data_dir .. "/backup//"
vim.opt.directory = state_dir .. "/swap//"
vim.opt.undodir = state_dir .. "/undo//"

-- Autoload plugins
require("config/lazy")





