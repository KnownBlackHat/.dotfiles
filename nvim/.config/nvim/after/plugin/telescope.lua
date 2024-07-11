local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})

vim.keymap.set('n', '<leader>gd', function()
    builtin.lsp_definitions { jump_type = "never" }
end, {})

vim.keymap.set('n', '<leader>s', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>b', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        previewer = false,
    })
end, { desc = "Fuzzily search current buffer" })


require('telescope').setup({
    defaults = {
        prompt_prefix = "🔍 ",
        file_ignore_patterns = { "node_modules/*", "build/*" }
    }
})
