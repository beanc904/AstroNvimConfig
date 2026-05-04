local luasnip = require "luasnip"

return {
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "astronvim.plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { vim.fn.stdpath "config" .. "/snippets" },
      }
    end,
  },
  {
    "AstroNvim/astrocore",
    --@type AstroCoreOpts
    opts = {
      mappings = {
        i = {
          ["<C-k>"] = {
            function()
              if luasnip.choice_active() then luasnip.change_choice(-1) end
            end,
          },
          ["<C-j>"] = {
            function()
              if luasnip.choice_active() then luasnip.change_choice(1) end
            end,
          },
        },
      },
    },
  },
}
