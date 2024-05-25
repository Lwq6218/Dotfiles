-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "H")
vim.keymap.del("n", "L")
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { noremap = true })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { noremap = true })
