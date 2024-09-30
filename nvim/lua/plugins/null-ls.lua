require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.shfmt, -- shell script formatting
    require("none-ls.formatting.autopep8"),
  },
})
