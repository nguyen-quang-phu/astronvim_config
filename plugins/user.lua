-- TODO: Test
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "kana/vim-textobj-entire",
    lazy = false,
    dependencies = { { "kana/vim-textobj-user" } },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "User AstroFile",
  },
  {
    "vim-scripts/ReplaceWithRegister",
    lazy = false,
  },
  -- ruby
  {
    "tpope/vim-rails",
    lazy = false,
    ft = "ruby",
  },
  -- {
  --   "noahfrederick/vim-laravel",
  --   lazy = false,
  --   dependencies = { { "tpope/vim-dispatch", "tpope/vim-projectionist", "noahfrederick/vim-composer" } },
  -- },
  {
    "semanticart/ruby-code-actions.nvim",
  },
  {
    "bkad/CamelCaseMotion",
    lazy = false,
  },
  {
    "tpope/vim-abolish",
    lazy = false,
  },
  {
    "axelvc/template-string.nvim",
    opts = {},
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
    "michaeljsmith/vim-indent-object",
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
  {
    "weizheheng/ror.nvim",
    lazy = false,
  },
  {
    "echasnovski/mini.move",
    lazy = false,
  },
  { "otavioschwanck/new-file-template.nvim", opts = {}, lazy = false },
  {
    "otavioschwanck/arrow.nvim",
    opts = {
      always_show_path = false,
      show_icons = true,
      mappings = {
        edit = "e",
        delete_mode = "d",
        clear_all_items = "C",
        toggle = "s",
        open_vertical = "v",
        open_horizontal = "-",
        quit = "q",
      },
      leader_key = ";",
      after_9_keys = "zxcbnmZXVBNM,afghjklAFGHJKLwrtyuiopWRTYUIOP", -- Please, don't pin more then 9 XD,
      save_key = function()
        return vim.loop.cwd() -- we use the cwd as the context from the bookmarks.  You can change it for anything you want.
      end,
      full_path_list = { "update_stuff" }, -- filenames on this list will ALWAYS show the file path too.
    },
    lazy = false,
  },
  { "rgroli/other.nvim", lazy = false },
  { "beloglazov/vim-textobj-quotes", lazy = false, dependencies = { "kana/vim-textobj-user" } },
  -- lazy.nvim
}
