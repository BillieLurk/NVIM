-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

-- Splits
-- Remove the default <leader>- mapping
keymap.del("n", "<leader>-")
-- Add the new <S-v> mapping for horizontal split
keymap.set("n", "sv", "<cmd>split<cr>", { desc = "Horizontal split" })
-- Remove the default <leader>| mapping
keymap.del("n", "<leader>|")
-- Add the new ss mapping for vertical split
keymap.set("n", "ss", "<cmd>vsplit<cr>", { desc = "Vertical split" })

-- Map Ctrl+A to select all text
keymap.set("n", "<C-a>", "ggVG", { desc = "Select all text" })
keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select all text" })
