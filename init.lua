local lazypath = vim.fn.stdpath("config") .. "/packages/lazy.nvim" -- ~/.config/nvim/packages/lazy.nvim
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("lazy").setup({
      spec = {
         {"srcery-colors/srcery-vim"},
         {"tpope/vim-surround"},
         {"windwp/nvim-autopairs",
          config = function()
             require('nvim-autopairs').setup{}
          end
         },
         {"mhinz/vim-startify",
          config = function()
             vim.g.startify_custom_header = "[]"
             vim.g.startify_files_number = 1000
          end
         },
         {"nvim-lualine/lualine.nvim",
          config = function()
             local function llwindow()
                return vim.api.nvim_win_get_number(0)
             end
             local llc = {
                blue   = '#1979EA',
                green  = '#21A167',
                black  = '#000000',
                white  = '#F2D5C3',
                red    = '#B2280E',
                yellow = '#E9A039',
                grey   = '#505050',
             }
             local mytheme = {
                normal = {
                   a = { fg = llc.black, bg = llc.blue },
                   b = { fg = llc.white, bg = llc.green },
                   c = { fg = llc.white, bg = llc.black },
                   x = { fg = llc.black, bg = llc.black },
                   y = { fg = llc.black, bg = llc.black },
                   z = { fg = llc.black, bg = llc.blue },
                },
                insert = { a = { fg = llc.black, bg = llc.yellow },
                           z = { fg = llc.black, bg = llc.yellow }, },
                visual = { a = { fg = llc.black, bg = llc.green },
                           z = { fg = llc.black, bg = llc.green }, },
                replace = { a = { fg = llc.black, bg = llc.red },
                            z = { fg = llc.black, bg = llc.red }, },
                inactive = {
                   a = { fg = llc.white, bg = llc.black },
                   b = { fg = llc.white, bg = llc.black },
                   c = { fg = llc.black, bg = llc.black },
                   x = { fg = llc.black, bg = llc.black },
                   y = { fg = llc.white, bg = llc.black },
                   z = { fg = llc.white, bg = llc.black },
                },
             }
             local lualine = require 'lualine'
             local lualine_config = {
                options = {
                   icons_enabled = false,
                   theme = mytheme,
                   component_separators = {left = '', right = ''},
                   section_separators = {left = '', right = ''},
                   disabled_filetypes = {},
                   always_divide_middle = true
                },
                sections = {
                   lualine_a = {'filename'},
                   lualine_b = {'filetype'},
                   lualine_c = {'progress', 'location', llwindow},
                   lualine_x = {'diff'},
                   lualine_y = {'encoding', 'fileformat'},
                   lualine_z = {'branch',
                                {'diagnostics', sources={'nvim_diagnostic'}}}
                },
                inactive_sections = {
                   lualine_a = {},
                   lualine_b = {},
                   lualine_c = {'filename'},
                   lualine_x = {'location'},
                   lualine_y = {},
                   lualine_z = {}
                },
                tabline = {},
                extensions = {}
             }
             lualine.setup(lualine_config)
          end
         },
      },})
vim.opt.laststatus    = 2
vim.opt.showmode      = false
vim.opt.ruler         = false
vim.opt.number        = true
vim.opt.autoindent    = true
vim.opt.ttyfast       = true
vim.opt.mouse         = "a"
vim.opt.hidden        = true
vim.opt.tabstop       = 4
vim.opt.smartcase     = true
vim.opt.incsearch     = true
vim.opt.clipboard     = "unnamedplus"
vim.opt.undofile      = true
vim.opt.cursorline    = true
vim.opt.wildmenu      = true
vim.opt.wildmode      = "list:longest"
vim.opt.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.keymap.set("n", "<F5>", ":q<CR>")
vim.keymap.set("i", "<F5>", "<Esc>:q<CR>")
vim.keymap.set("n", "<F9>", ":w<CR>")
vim.keymap.set("i", "<F9>", "<Esc>:w<CR>a")
vim.keymap.set("n", "<F10>", ":q!<CR>")
vim.keymap.set("i", "<F10>", "<Esc>:q!<CR>")
vim.keymap.set("n", "<F12>", ":x<CR>")
vim.keymap.set("i", "<F12>", "<Esc>:x<CR>a")
vim.keymap.set("n", "zx", ":q!<CR>", { silent = true })
vim.keymap.set("n", "zs", ":w<CR>", { silent = true })
vim.cmd [[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]]
-- Convert to something like sculpture-themes-dark-theme.el
vim.g.srcery_italic         = 1
vim.g.srcery_black          = 'NONE'
vim.g.srcery_red            = '#1979EA'
vim.g.srcery_green          = '#21A167'
vim.g.srcery_yellow         = '#E9A039'
vim.g.srcery_blue           = '#B2280E'
vim.g.srcery_magenta        = '#500D0E'
vim.g.srcery_cyan           = '#386C7A'
vim.g.srcery_white          = '#FDFFF3'
vim.g.srcery_bright_black   = '#505050'
vim.g.srcery_bright_red     = '#003564'
vim.g.srcery_bright_green   = '#8EBE58'
vim.g.srcery_bright_yellow  = '#F2D5C3'
vim.g.srcery_bright_blue    = '#713238'
vim.g.srcery_bright_magenta = '#9F143B'
vim.g.srcery_bright_cyan    = '#31666A'
vim.g.srcery_bright_white   = '#FFFFFF'
vim.cmd [[colorscheme srcery]]
