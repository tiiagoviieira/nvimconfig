return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- FZF sorter for significantly better performance
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, 
  },
  config = function()
    require("telescope").setup({
      -- You can paste Kickstart's Telescope options here
    })

    -- Paste Kickstart's Telescope keymaps here
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
  end,
}


