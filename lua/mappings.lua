require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown preview toggle" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
