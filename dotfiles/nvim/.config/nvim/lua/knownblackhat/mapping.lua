vim.g.mapleader = " "

vim.g.copilot_assume_mapped = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>")

-- Disabling arrow key
vim.keymap.set("n", "<left>", "<cmd>echo 'Use h to move!!'<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!!'<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo 'Use k to move!!'<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo 'Use j to move!!'<CR>")

vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlighting when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><Tab>", vim.lsp.buf.hover)

vim.g.multi_cursor_quit_key='<Tab>'

vim.g.user_emmet_leader_key=','

vim.api.nvim_set_keymap("i", "<C-K>", "copilot#Accept('<CR>')", {expr=true, silent=true})

