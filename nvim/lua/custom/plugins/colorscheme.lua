-- ColorTable

-- here you can put colorschemes
local colorschemes = {
  -- name of theme variable must be same as theme name
  -- so I can't sucesfully rename catppuccin
  catppuccin = {
    -- lazy plugin link
    'catppuccin/nvim',
    -- colorscheme config
    opts = {
      flavour = 'macchiato',
      transparent_background = true,
    },
  },
  tokyonight = {
    'folke/tokyonight.nvim',
    opts = {
      styles = {
        style = 'night',
        comments = { italic = false }, -- disable italics in comments
        transparent = true,
      },
    },
  },
  kanagawa = {
    'rebelot/kanagawa.nvim',
    opts = {
      theme = 'wave',
      transparent = true,
    },
  },
}

-- To change your coloscheme just change this variable to any index in colorschemes (e.g. tokyonight, catppuccin)
local name = 'catppuccin'
local link = colorschemes[name][1]
local opts = colorschemes[name].opts

return {
  link,
  name = name,
  priority = 1000,
  config = function()
    require(name).setup(opts or {})
    vim.cmd.colorscheme(name)
  end,
}
