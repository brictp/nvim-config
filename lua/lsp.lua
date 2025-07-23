return {
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.enable({ "lua_ls" })

    vim.lsp.config("*", {
      capabilities = capabilities,
      root_markers = { ".git" },

      on_attach = function(_, bufnr)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { buffer = bufnr })
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
      end,

      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        },
      },

      -- Puedes incluir esto si usas semantic tokens extendidos
      capabilities = {
        textDocument = {
          semanticTokens = {
            multilineTokenSupport = true,
          },
        },
      },
    })
  end,
}
