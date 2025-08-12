return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

-- return {
--   -- add tokyonight
--   {
--     "folke/tokyonight.nvim",
--     lazy = true,
--     opts = {
--       style = "night",
--       transparent = true,
--     },
--   },
-- }
