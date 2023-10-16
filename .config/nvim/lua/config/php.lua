return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.black,
          nls.builtins.formatting.blade_formatter,
          nls.builtins.diagnostics.eslint_d.with({
            condition = function(utils)
              return utils.root_has_file({ ".eslintrc.json" })
            end,
          }),
          nls.builtins.diagnostics.trail_space.with({ disabled_filetypes = { "NvimTree" } }),
          nls.builtins.formatting.eslint_d.with({
            condition = function(utils)
              return utils.root_has_file({ ".eslintrc.json" })
            end,
          }),
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.rustywind.with({
            extra_filetypes = { "blade" },
          }),
          nls.builtins.formatting.pint,
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
          nls.builtins.diagnostics.hadolint,
        },
      }
    end,
  },
  {
    -- add longer timeout, since formatting blade files gets a little slow
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 2000 },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "williamboman/mason.nvim",
      opts = function(_, opts)
        if type(opts.ensure_installed) == "table" then
          table.insert(opts.ensure_installed, "php-debug-adapter")
        end
      end,
    },
    opts = function()
      local dap = require("dap")
      local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { path .. "/extension/out/phpDebug.js" },
      }
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.pint)
    end,
  },
}
