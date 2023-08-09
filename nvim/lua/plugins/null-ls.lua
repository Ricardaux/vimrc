require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.autopep8,
    require("null-ls").builtins.formatting.shfmt, -- shell script formatting
    -- require("null-ls").builtins.formatting.isort,
    require("null-ls").builtins.formatting.autoflake,
    require("null-ls").builtins.diagnostics.flake8
  },
})
