vim.keymap.set('n', '<leader>gs', vim.cmd.Git);
vim.keymap.set("n", "gr", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gu", "<cmd>diffget //3<CR>")
vim.keymap.set("n", "ci", "<cmd>Git commit -S<CR>")
