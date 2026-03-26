return {
  "saghen/blink.cmp",
  -- optional: provides tons of pre-made snippets for different languages
  dependencies = "rafamadriz/friendly-snippets",

  -- use a release tag to download pre-built binaries (fastest setup)
  version = "*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- "default" keymaps means:
    -- <C-space> to trigger manually
    -- <C-n> / <Down> to go down the list
    -- <C-p> / <Up> to go up the list
    -- <C-y> or <Enter> to accept
    keymap = { preset = "default" },

    appearance = {
      -- Use a Nerd Font for the icons in the menu
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono"
    },

    -- Default list of things blink will look at to give you suggestions
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    
    -- Show documentation window automatically next to the completion menu
    completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 200 },
    },

    -- Provide context help when typing function arguments
    signature = { enabled = true }
  },
}
