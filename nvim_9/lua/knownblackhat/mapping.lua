vim.g.mapleader = " "

vim.g.copilot_assume_mapped = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><Tab>", vim.lsp.buf.hover)

vim.g.multi_cursor_quit_key='<Tab>'

vim.g.user_emmet_leader_key=','

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)

vim.keymap.set("n", "gr", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gu", "<cmd>diffget //3<CR>")

vim.api.nvim_set_keymap("i", "<C-K>", "copilot#Accept('<CR>')", {expr=true, silent=true})
