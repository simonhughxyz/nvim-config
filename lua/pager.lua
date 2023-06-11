local fn = vim.fn
require('settings')    -- lua/settings.lua
require('plugins')    -- lua/settings.lua
require('mappings')    -- lua/mappings.lua
require('highlights')   -- lua/highlights.lua
require('statusline') -- lua/statusline.lua

local o = vim.opt
-- UI Layout
o.laststatus = 1
o.number = true
o.relativenumber = true
o.showcmd = false                     -- show command in bottom bar
o.wildmenu = true                    -- show wildmenu on tab
-- o.wildmode=list:longest,full  -- 1st tab list shown, 2nd tab wildmenu show
o.wildmode = 'longest:full,full'
o.lazyredraw = true                  -- Vim will only redraw when needed
o.showmatch = true                   -- higlight matching parenthesis
o.ruler = false                      -- show row and column in footer
o.splitbelow = true
o.splitright = true
-- o.textwidth = 80                 -- Wrap text at 80th column
o.cursorline = false               -- highlight current line
o.colorcolumn = '0'              -- show line at 80th character column
require('plugins.gruvbox-config')
