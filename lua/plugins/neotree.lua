return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- Gives you the nice file icons
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        -- Automatically close Neovim if Neo-tree is the last window left
        close_if_last_window = true, 
        
        -- Make the tree track whichever file you are currently editing
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
        },
      })

      -- Keymap to quickly toggle the sidebar on and off
      -- <leader> is the Space key, so Space + e opens the explorer
      vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle [E]xplorer' })
    end,
}
