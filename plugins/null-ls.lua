return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = false,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    enabled = false,
  },
  {
    "nvimtools/none-ls.nvim",
    lazy = false,
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.root_dir = opts.root_dir
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
      opts.debug = true
      opts.diagnostics_format = "[#{c}] #{m} (#{s})"
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.erb_lint,
        nls.builtins.formatting.eslint_lsp,
        nls.builtins.diagnostics.erb_lint,
        nls.builtins.diagnostics.eslint_lsp,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.rubocop.with({
          diagnostics_format = "[#{c}] #{m} (#{s})",
        }),
        nls.builtins.formatting.rubocop,
      })
    end,
  }
}
