require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "lua_ls", "ruby_lsp", "rubocop", "herb_lsp", "rust_analyzer", "swift_mesonls", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
