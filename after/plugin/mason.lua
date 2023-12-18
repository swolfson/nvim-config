require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "lua_ls", "clangd", "cmake", "pyright", "svlangserver"}
})
