-- For help, see :h {vim.g vim.cmd vim.opt vim.fn.has}
-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use 'ludovicchabant/vim-gutentags' -- Automatic tags management
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- UI to select things (files, grep results, open buffers...)
  -- use 'itchyny/lightline.vim' -- Fancier statusline
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Add git related info in the signs columns and popups
  use 'nvim-treesitter/nvim-treesitter' -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter-textobjects' -- Additional textobjects for treesitter
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- custom
  use 'folke/tokyonight.nvim' -- theme
  use 'mrjones2014/lighthaus.nvim' -- theme
  use 'EdenEast/nightfox.nvim' -- theme
  use 'sainnhe/everforest' -- theme
  -- use { -- doesn't work
  --  'henriquehbr/ataraxis.lua', -- margins for code
  --  requires = {{'henriquehbr/lua-helpers'}}
  -- }
  use 'mhinz/vim-startify' -- startpage
  use 'tpope/vim-vinegar' -- file browser
  use 'lervag/vimtex' -- latex support
  use 'wellle/targets.vim' -- textobjects
  use 'michaeljsmith/vim-indent-object' -- indents as textobjects
  use 'tommcdo/vim-lion' -- align text
  -- use 'rhysd/clever-f.vim' -- extends f and t
  use 'tpope/vim-sleuth' --  automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
  use 'tpope/vim-repeat' -- not supported by most plugins?
  use 'tpope/vim-unimpaired' -- complementary mappings
  -- use 'arp242/confirm_quit.vim' -- confirm quit message
  use {
    'phaazon/hop.nvim', -- one/two char jump
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  use 'nvim-lualine/lualine.nvim' -- statusline
  use 'b0o/mapx.nvim' -- easy key maps
  use 'max397574/better-escape.nvim' -- remove delay when using "escape" keys
  use {
    'kyazdani42/nvim-tree.lua', -- file tree sidebar
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }
  use 'smithbm2316/centerpad.nvim' -- center a buffer by creating two on either side
  use {
    'windwp/nvim-autopairs', -- automatic pairs
    config = function()
      require('nvim-autopairs').setup{}
    end
  }
  use {
    'nvim-orgmode/orgmode', -- org mode support
    config = function()
      require('orgmode').setup{}
    end
  }
  use 'simnalamburt/vim-mundo' -- undo tree
  -- use { -- I don't like it
  --   'karb94/neoscroll.nvim', -- smooth scrolling
  --   config = function()
  --     require('neoscroll').setup({
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
  --         '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
  --       hide_cursor = true,          -- Hide cursor while scrolling
  --       stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  --       use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --       respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --       easing_function = nil,        -- Default easing function
  --       pre_hook = nil,              -- Function to run before the scrolling animation starts
  --       post_hook = nil,              -- Function to run after the scrolling animation ends
  --     })
  --   end
  -- }
  use {
    "folke/which-key.nvim", -- command hints, huge!
    config = function()
      require("which-key").setup {
      }
    end
  }
  use {
    "folke/zen-mode.nvim", -- zen mode, does not show statusline
    config = function()
      require("zen-mode").setup {
        plugins = {
          options = {
            enabled = true,
            ruler = true,
            showcmd = true,
          },
          twilight = { enabled = false }, 
          gitsigns = { enabled = true },
        }}
    end
  }
  -- use 'roman/golden-ratio' -- golden ratio split
  use 'tpope/vim-surround' -- surround with text
  -- use 'wellle/visual-split.vim' -- split easily
  use { -- use '~/.fzf'
    'junegunn/fzf',
    run = './install --bin'
  }
  use 'junegunn/fzf.vim' -- useful functions
  use 'preservim/tagbar' -- shows ctags
  use 'tommcdo/vim-exchange' -- exchange regions of text, cx is default but gx works now.
  use 'tommcdo/vim-ninja-feet' -- adds a motion that acts inside text objects, 
  use 'tommcdo/vim-centaur' -- center line of text, gzi_  
  use 'simeji/winresizer' -- C-e to start window resize mode
end)

--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = 'nosplit'

--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.number = true

--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 50
vim.wo.signcolumn = 'yes'

--Set colorscheme (order is important here)
vim.o.termguicolors = true
-- vim.g.onedark_terminal_italics = 2

--Set statusbar
-- vim.g.lightline = {
--   colorscheme = '',
--   active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
--   component_function = { gitbranch = 'fugitive#head' },
-- }

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

--Map blankline
vim.g.indent_blankline_char = "│"
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
  "class",
  "return",
  "function",
  "method",
  "^if",
  "^while",
  "jsx_element",
  "^for",
  "^object",
  "^table",
  "block",
  "arguments",
  "if_statement",
  "else_clause",
  "jsx_element",
  "jsx_self_closing_element",
  "try_statement",
  "catch_clause",
  "import_statement",
  "operation_type",
}
vim.wo.colorcolumn = "99999" -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59

-- Gitsigns
-- require('gitsigns').setup {
--   signs = {
--     add = { hl = 'GitGutterAdd', text = '+' },
--     change = { hl = 'GitGutterChange', text = '~' },
--     delete = { hl = 'GitGutterDelete', text = '_' },
--     topdelete = { hl = 'GitGutterDelete', text = '‾' },
--     changedelete = { hl = 'GitGutterChange', text = '~' },
--   },
-- }

-- Telescope
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}
--Add leader shortcuts
-- vim.api.nvim_set_keymap('n', '<leader>bb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ss', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fr', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })

-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
  },
}

-- LSP settings
local nvim_lsp = require 'lspconfig'
local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable the following language servers
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Example custom server
local sumneko_root_path = vim.fn.getenv 'HOME' .. '/.local/bin/' -- Change to your sumneko root installation
local sumneko_binary = sumneko_root_path .. 'lua-language-server'

-- Make runtime files discoverable to the server
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

require('lspconfig').sumneko_lua.setup {
  cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- my settings
vim.opt.clipboard = "unnamedplus" -- sync with system clipboard
vim.opt.confirm = true -- confirm to save changes before exiting modified buffer
vim.opt.cursorline = false -- Enable highlighting of the current line -- too slow
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.list = true -- Show some invisible characters (tabs...
vim.opt.showmode = false -- dont show mode since we have a statusline
vim.opt.undolevels = 10000
vim.opt.wildmode = "longest:full,full" -- Command-line completion mode
vim.opt.scrolloff = 4
-- ported from vim
vim.cmd([[
function! TextFileInit()
  setlocal spell
  setf markdown
  :iab <expr> iii strftime("%y%m%d %H:%M:%S %a")
endfunction
]])

vim.cmd([[
:autocmd BufRead,BufNewFile /home/sys2/00/0A/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0C/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0L/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0F/*/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0P/*/* call TextFileInit()
]])

-- startify
vim.g.startify_custom_header = "[]"
vim.g.startify_files_number = 1000

-- ataraxis setup
-- local ataraxis = require 'ataraxis'
-- ataraxis.setup {
--     width = 80 -- sets the writing area width
-- }

-- tokyonight theme
vim.g.tokyonight_style = "night" -- storm, night, day
-- vim.g.tokyonight_transparent = "true" -- disable for day
vim.g.tokyonight_hide_inactive_statusline = "true"
vim.g.tokyonight_lualine_bold = "true"
vim.cmd [[colorscheme tokyonight]]

-- lualine setup
local lualine = require 'lualine'
local lualine_config = {
  options = {
    icons_enabled = false,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    -- lualine_a = {'mode'},
    lualine_a = {'filename'},
    lualine_b = {'filetype'},
    lualine_c = {'progress', 'location'},
    lualine_x = {},
    lualine_y = {'encoding', 'fileformat'},
    lualine_z = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp'}}}
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

-- mapx
require'mapx'.setup{ global = true, whichkey = true }
-- nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<Cr>", "silent", "LSP: Goto declaration")
-- -- Also supports setting WhichKey group names
-- m.nname("<leader>l", "LSP")
-- nnoremap("<leader>li", ":LspInfo<Cr>",    "LSP: Show LSP information")
-- nnoremap("<leader>lr", ":LspRestart<Cr>", "LSP: Restart LSP")
-- nnoremap("<leader>ls", ":LspStart<Cr>",   "LSP: Start LSP")
-- nnoremap("<leader>lS", ":LspStop<Cr>",    "LSP: Stop LSP")
-- nnoremap("j", "v:count ? 'j' : 'gj'", "expr")
-- nnoremap("k", "v:count ? 'k' : 'gk'", "expr")
-- nmap("J", "5j")
-- nmap("K", "5k")
-- inoremap("<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], "silent", "expr")
-- inoremap("<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], "silent", "expr")
-- map("<M-/>", ":Commentary<Cr>", "silent")
-- cmd("LspDiag", function() vim.lsp.diagnostic.set_loclist() end, {nargs = 0})
-- Redefining 
nnoremap('<leader><space>', "<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>", 'silent', 'Find Files')
nnoremap('<leader>bb', "<cmd>lua require('telescope.builtin').buffers()<CR>", 'silent', 'Buffers')
nnoremap('<leader>ss', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", 'silent', 'Find in current buffer')
nnoremap('<leader>sh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", 'silent', 'Help Tags')
nnoremap('<leader>st', "<cmd>lua require('telescope.builtin').tags()<CR>", 'silent', 'Tags')
nnoremap('<leader>sp', "<cmd>lua require('telescope.builtin').grep_string()<CR>", 'silent', 'Grep String')
nnoremap('<leader>sd', "<cmd>lua require('telescope.builtin').live_grep()<CR>", 'silent', 'Live Grep')
nnoremap('<leader>so', "<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>", 'silent', 'Tags')
nnoremap('<leader>fr', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", 'silent', 'Recentf')
-- Maps
nnoremap('<F5>', ':q<CR>', 'Close Buffer')
inoremap('<F5>', '<Esc>:q<CR>', 'Close Buffer')
nnoremap('<F6>', ':NvimTreeToggle<CR>', 'File Tree')
inoremap('<F6>', '<Esc>:NvimTreeToggle<CR>', 'File Tree')
nnoremap('<F9>', ':w<CR>', 'Save')
inoremap('<F9>', '<Esc>:w<CR>a', 'Save')
nnoremap('<F10>', ':q', 'Quit')
inoremap('<F10>', '<Esc>:q', 'Quit')
nnoremap('<F12>', ':x<CR>', 'Save and Quit')
inoremap('<F12>', '<Esc>:x<CR>a', 'Save and Quit')
nnoremap('zx', ':q<CR>', 'Quit')
nnoremap('zs', ':w<CR>', 'Save')
nnoremap('ZX', ':q!<CR>', 'Quit without saving')
nnoremap('ZS', ':x<CR>', 'Save and Quit')
nnoremap('<leader>ff', ':e ', 'Open file')
nnoremap('<leader>oo', "<cmd>lua require'centerpad'.toggle{ leftpad = 25, rightpad = 25 }<cr>", "silent", "Centerpad")
nnoremap('<leader>oc', ":ZenMode<CR>", "Zen Mode")
nnoremap('<leader>ou', ":MundoToggle<CR>", "Undo Tree")
nnoremap('<leader>oi', ":TagbarToggle<CR>", "Tagbar")
nnoremap('<leader>ot', ":NvimTreeToggle<CR>", "File Tree")
-- C-s-h ;; evil-window-decrease-width
-- C-s-j ;; evil-window-decrease-height
-- C-s-k ;; evil-window-increase-height
-- C-s-l ;; evil-window-increase-width
nnoremap('<Leader>sp', ":Rg<CR>", "Search text in files in current directory")
-- nnoremap('<Leader>gg', ":Blines<CR>", "Search in current file")
nnoremap('<Leader>gg', ":G<CR>", "Git status")
nnoremap('<Leader>gs', ":GFiles<CR>", "Git files")
nnoremap('<Leader>gS', ":GFiles?<CR>", "Modified git files")
nnoremap('<Leader>gll', ":Commits<CR>", "Project's commits")
nnoremap('<Leader>gLl', ":BCommits<CR>", "Current file's commits")
nnoremap('<Leader>n', ":noh<CR>", "Remove Highlights")
nnoremap('<Leader>hbb', ":Maps<CR>", "Maps")
nnoremap('<Leader>hf', ":Commands<CR>", "Commands")
nnoremap('<Leader>ht', ":Colors<CR>", "Color Schemes")

-- better escape
require("better_escape").setup {
    mapping = {",.", ".,"}, -- a table with mappings to use
    timeout = 200, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
}

-- Gitsigns
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▍', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▍', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}

-- nvim-tree
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}

-- org mode treesitter
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Dropbox/org/refile.org',
})

-- undo tree
vim.g.undofile = 'true'
vim.g.unundodir = '~/.config/nvim/undo'

-- winresizer
vim.g.winresizer_vert_resize = 1
vim.g.winresizer_horiz_resize = 1

-- vim-exchange
vim.cmd [[
function! s:create_map(mode, lhs, rhs)
	if !hasmapto(a:rhs, a:mode)
		execute a:mode.'map '.a:lhs.' '.a:rhs
	endif
endfunction
call s:create_map('n', 'gx', '<Plug>(Exchange)')
call s:create_map('x', 'X', '<Plug>(Exchange)')
call s:create_map('n', 'gxg', '<Plug>(ExchangeClear)')
call s:create_map('n', 'gxx', '<Plug>(ExchangeLine)')
]]
