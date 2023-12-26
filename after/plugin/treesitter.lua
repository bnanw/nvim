require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua",
    "vim",
    "vimdoc",
    "html",
    "css",
    "java",
    "javascript",
    "rust",
    "regex",
    "json",
    "passwd",
    "sql",
    "typescript",
    "xml",
    "yaml",
    "bash",
    "awk",
    highlight = {
      enable = true,
    }
  }
}
