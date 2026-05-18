local plugins = {
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      enabled = true,
      date_format = "%r",
    },
  },
}

return plugins
