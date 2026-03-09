require "nvchad.options"

-- add yours here!
local opt = vim.opt

-- Basic line numbers
opt.number = true
opt.relativenumber = true

-- Autocmds for Insert/Cmdline switching
vim.api.nvim_create_autocmd({ "InsertEnter", "CmdlineEnter" }, {
  callback = function() opt.relativenumber = false end,
})
vim.api.nvim_create_autocmd({ "InsertLeave", "CmdlineLeave" }, {
  callback = function() opt.relativenumber = true end,
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
