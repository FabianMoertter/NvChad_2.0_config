local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "nix",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

return M
