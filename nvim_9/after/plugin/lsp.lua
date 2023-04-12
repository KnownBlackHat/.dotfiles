local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = false,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local cmp = require('cmp')

lsp.setup_nvim_cmp({
  mapping = lsp.defaults.cmp_mappings({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = vim.NIL,
    ['<S-Tab>'] = vim.NIL,
    ['<CR>'] = vim.NIL,
  })
})

cmp.setup({   window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }})

lsp.on_attach(function (client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n","<leader>vca", function() vim.lsp.buf.code_action() end, opts)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint'})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

