return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Size of the terminal window
        size = 15,
        
        -- The key you press to toggle the terminal
        -- <c-\> means Ctrl + \
        open_mapping = [[<c-\>]], 
        
        -- Hide the standard Neovim line numbers inside the terminal
        hide_numbers = true, 
        
        -- Set it to open at the bottom (horizontal split). 
        -- You can also change this to "vertical" or "float"
        direction = "horizontal",
        
        -- Automatically enter "Insert" mode when you open it
        start_in_insert = true, 
      })
    end,
}
