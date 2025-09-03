require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruby_lsp", "rubocop" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
