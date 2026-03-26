-- 1. Load your core settings first
require("custom.options")
require("custom.keymaps")

-- 2. Bootstrap lazy.nvim (Downloads it if you don't have it)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 3. Tell lazy.nvim to load everything in the `lua/plugins/` folder
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
})


