require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "html",
    "css",
    "java",
    "javascript",
    "c",
    "regex",
    "json",
    "passwd",
    "sql",
    "typescript",
    "xml",
    "yaml",
    "bash",
    "awk",
    "cmake",
    highlight = {
      enable = true,
    }
  }
}
