-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins =
{
  {
    'ofirgall/ofirkai.nvim'
  },
  {
    'declancm/cinnamon.nvim',
    config = function()
      require("cinnamon").setup {
        override_keymaps = true,
        extra_keymaps = true,
        extended_keymaps = true
      }
    end,
  },
  {
    'arnamak/stay-centered.nvim',
    config = function()
      require("stay-centered").setup()
    end
  },
  {
    'tanvirtin/monokai.nvim'
  }
}

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        -- change `Normal` to the group you want to change
        -- and `#ffffff` to the color you want
        -- see `:h nvim_set_hl` for more options
        vim.api.nvim_set_hl(0, "IlluminatedWordRead", { fg = "#9ca0a4", underline = true, bold = false })
        vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#9ca0a4", underline = true, bold = false })
      end,
    },
  },
}

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = false

lvim.colorscheme = "ofirkai-darkblue"
