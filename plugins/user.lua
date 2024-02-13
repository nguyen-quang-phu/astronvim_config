-- TODO: Test
return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
  },
  -- ruby
  -- {
  --   "noahfrederick/vim-laravel",
  --   lazy = false,
  --   dependencies = { { "tpope/vim-dispatch", "tpope/vim-projectionist", "noahfrederick/vim-composer" } },
  -- },
    {
    "tpope/vim-abolish",
    lazy = false,
  },
  {
    "AndrewRadev/switch.vim",
    lazy = false,
  },
  {
    "tpope/vim-rbenv",
    lazy = false,
  },
  {
    "vim-test/vim-test",
    lazy = false,
  },
  {
    "cbochs/portal.nvim",
    cmd = "Portal",
    opts = {},
    keys = {
      { "<C-o>", "<cmd>Portal jumplist backward<cr>", desc = "Portal Jump backward" },
      { "<C-i>", "<cmd>Portal jumplist forward<cr>", desc = "Portal Jump forward" },
    },
  },
  {
    "AndrewRadev/splitjoin.vim",
    lazy = false,
  },
  {
    "stevearc/dressing.nvim",
    lazy = false,
    opts = {
      input = {
        min_width = { 60, 0.9 },
      },
      select = {
        -- telescope = require('telescope.themes').get_ivy({...})
        --     telescope = require('telescope.themes').get_dropdown({ layout_config = { height = 15, width = 90 } }), }
        --     })
      },
    },
  },
  { "otavioschwanck/new-file-template.nvim", opts = {}, lazy = false },
  { "rgroli/other.nvim", lazy = false },
  { "beloglazov/vim-textobj-quotes", lazy = false, dependencies = { "kana/vim-textobj-user" } },
  -- lazy.nvim
}
