
function ColorMyPencils(color)
    color = color or "default"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
    vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0,"Pmenu", { bg = "none" })
    vim.api.nvim_set_hl(0,"Visual", { bg = "Grey" })
    vim.api.nvim_set_hl(0,"LineNr", { fg = "LightGrey" })
    vim.api.nvim_set_hl(0,"Identifier", { fg = "#29fefe" })
    vim.api.nvim_set_hl(0,"Statement", { fg = "yellow" })
    vim.api.nvim_set_hl(0,"Type", { fg = "#00ff00" })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg='#1f1e1e' })
end

ColorMyPencils()
