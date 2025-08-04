return {

  "neovim/nvim-lspconfig",
  dependencies = {
    "wiliamboman/mason.nvim",
    "wiliamboman/nvim-lspconfig.nvim",
  },

  opts = {
    servers = {
      -- Configuration Ruby LSP
      ruby_lsp = {
        settings = {
          ruby = {
            format = {
              formatter = "rubocop",
            },
            check = {
              formatter = "rubocop",
            },
          },
        },
      },
    },
  },

  {
    "wiliamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "ruby_lsp" })
    end,
  },

  -- Plugin Specific Ruby/Rails

  "tpope/vim-rails",
  "tpope/vim-bundler",
  "tpope/vim-rake",
  "vim-ruby/vim-ruby",

  -- Configuration Treesitter for Ruby
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ruby" })
      end
    end,
  },

  -- Nvim-cmp (Autocompletion) - LazyVim already Configuration,
  -- Make sure Configuration connected.
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Sumber LSP
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function(_, opts)
      -- Pastikan sources sudah ada, jika tidak, inisialisasi
      opts.sources = opts.sources or {}
      -- Tambahkan sumber LSP jika belum ada
      local found_lsp_source = false
      for _, source_group in ipairs(opts.sources) do
        for _, source in ipairs(source_group) do
          if source.name == "nvim_lsp" then
            found_lsp_source = true
            break
          end
        end
        if found_lsp_source then
          break
        end
      end
      if not found_lsp_source then
        table.insert(opts.sources, 1, { name = "nvim_lsp" })
      end
    end,
  },
}
