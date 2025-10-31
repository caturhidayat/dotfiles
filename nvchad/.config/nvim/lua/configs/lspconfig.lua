require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruby_lsp", "rubocop", "herb_lsp", "swift_mesonls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
