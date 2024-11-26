vim.cmd.set("nocompatible")
vim.cmd.set("showmatch")
vim.cmd.set("ignorecase")
vim.cmd.set("mouse=v")
vim.cmd.set("hlsearch")
vim.cmd.set("autoindent")
vim.cmd.set("number")
vim.cmd.set("relativenumber")
vim.cmd.set("wildmode=longest,list")
vim.cmd.set("cc=99")
vim.cmd.set("tabstop=2")
vim.cmd.set("shiftwidth=2")
vim.cmd.set("softtabstop=2")
vim.cmd.set("expandtab")

require("config.lazy")

--configure and turn on onedark theme, installed themes defined in ./lua/plugins/themes
require('onedark').setup {
  style = 'deep'

}
require('onedark').load()

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "typescript", 
    "lua", 
    "vim", 
    "vimdoc", 
    "javascript", 
    "markdown", 
    "markdown_inline",
    "latex",
    "tsx"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- turn on syntax highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  --turn on indenting
  indent = {
    enable = true
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

--turns on folding, unsure how I feel about this one
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldcolumn = 'auto:9'
--vim.opt.foldtext = 'v:lua.vim.treesitter.foldtext()'
