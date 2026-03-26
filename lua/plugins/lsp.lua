return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Mason manages the installation of external tools (LSPs, linters)
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "j-hui/fidget.nvim", -- UI for LSP loading progress
  },
  config = function()
    -- Paste Kickstart's 'LspAttach' autocommand here (it sets up your gd, gr keymaps)
    
    require("mason").setup()
    
    -- Define the servers you want
    local servers = {
      lua_ls = {
        settings = { Lua = { diagnostics = { globals = { "vim" } } } },
      },
      -- pyright = {}, 
      -- tsserver = {},
    }

    require("mason-lspconfig").setup({
      ensure_installed = vim.tbl_keys(servers),
      handlers = {
        function(server_name)
          -- Get the capabilities from blink.cmp
          local capabilities = require('blink.cmp').get_lsp_capabilities()
          
          -- Pass them to the LSP server
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
            -- merge any custom settings you defined in the `servers` table
            settings = (servers[server_name] or {}).settings,
          })
        end,
      },
    })
  end,
}
