-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.file-explorer.yazi-nvim" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  -- Base pack with basedpyright, black and isort
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  { import = "astrocommunity.pack.python.black" },
  { import = "astrocommunity.pack.python.isort" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.neovide" },
}
