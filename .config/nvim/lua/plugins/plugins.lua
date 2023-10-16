return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {},
        tailwindcss = {},
        intelephense = {},
        graphql = {
          filetypes = {
            "graphql",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
          root_dir = function()
            return vim.loop.cwd()
          end,
        },
      },
      setup = {
        -- eslint = function()
        --   require("lazyvim.util").on_attach(function(client, bufnr)
        --     vim.api.nvim_create_autocmd("BufWritePre", {
        --       buffer = bufnr,
        --       command = "EslintFixAll",
        --     })
        --     if client.name == "eslint" then
        --       client.server_capabilities.documentFormattingProvider = true
        --     elseif client.name == "tsserver" then
        --       client.server_capabilities.documentFormattingProvider = false
        --     end
        --   end)
        -- end,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "vimdoc",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "php",
        "phpdoc",
        "prisma",
        "vim",
        "yaml",
        "vue",
        "yaml",
        "xml",
        "terraform",
        "sql",
        "html",
        "graphql",
        "gitignore",
        "dockerfile",
      },
      highlight = {
        additional_vim_regex_highlighting = { "php", "vue" },
      },
      indent = {
        disable = { "vue" },
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

      -- stylua: ignore start
      map("n", "<leader>gb", function() gs.blame_line({ full = true }) end, "Blame Line")
      end,
    },
  },
  {
    "AckslD/muren.nvim",
    config = true,
    keys = {
      toggle_options_focus = "<localleader>r>",
      { "<leader>m", "<cmd>MurenToggle<cr>", desc = "Muren" },
    },
  },

  {
    "APZelos/blamer.nvim",
    config = function()
      vim.g.blamer_delay = 500
      vim.g.blamer_show_in_insert_modes = 0
      vim.api.nvim_set_keymap("", "<Leader>gB", ":BlamerToggle<CR>", { noremap = true })
    end,
  },
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },
  -- php
  {
    "StanAngeloff/php.vim",
    ft = "php",
  },

  -- vue
  {
    -- "posva/vim-vue",
    "leafOfTree/vim-vue-plugin",
    enabled = false,
    ft = "vue",
  },
  {
    "nvim-treesitter/playground",
  },
}
