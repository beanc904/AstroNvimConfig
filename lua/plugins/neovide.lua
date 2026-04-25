if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<M-=>"] = {
          function() require("utils.neovide").change_opacity(0.05) end,
          desc = "Increase Neovide opacity",
        },
        ["<M-->"] = {
          function() require("utils.neovide").change_opacity(-0.05) end,
          desc = "Decrease Neovide opacity",
        },
      },
    },
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = require("utils.neovide").get_font(),
        -- line spacing
        linespace = 0,
        -- default background
        background = "dark",
      },
      g = {
        neovide_opacity = 0.95,
        neovide_normal_opacity = 0.95,

        neovide_refresh_rate = 120,

        neovide_cursor_vfx_mode = { "pixiedust" },
        neovide_cursor_particle_lifetime = 0.4,
        neovide_cursor_vfx_particle_highlight_lifetime = 0.2,
        neovide_cursor_vfx_particle_density = 10.0,
        neovide_cursor_vfx_opacity = 180.0,
        neovide_cursor_vfx_particle_speed = 10.0,

        neovide_input_macos_option_key_is_meta = "both",
      },
    },
  },
}
