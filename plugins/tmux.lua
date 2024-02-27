return {
  {
    "otavioschwanck/tmux-awesome-manager.nvim",
    lazy = false,
    config = function()
      require("tmux-awesome-manager").setup {}
      local tmux_term = require "tmux-awesome-manager.src.term"
      local wk = require "which-key"

      wk.register({

        l = {
          r = {
            name = "+rails",
            s = tmux_term.run_wk {
              cmd = "rails s",
              name = "Rails Server",
              open_as = "window",
            },
            c = tmux_term.run_wk { cmd = "rails c", name = "Rails Console", open_as = "pane", size = "25%" },
            m = tmux_term.run_wk { cmd = "rails db:migrate", name = "Rails Migrate", open_as = "pane", size = "25%" },
            i = tmux_term.run_wk {
              cmd = "bundle install",
              name = "Bundle Install",
              open_as = "pane",
              close_on_timer = 2,
              visit_first_call = false,
              focus_when_call = false,
            },
          },
        },
      }, { prefix = "<leader>", silent = true })
    end,
  },
}
