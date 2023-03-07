local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>s', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


require('telescope').setup({
    defaults = {
        prompt_prefix = "🔍 ",
        file_ignore_patterns = {"node_modules/*", "build/*"}
    }})
