
function ColorMyPencils(color)
    color = color or "default"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
    vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0,"Pmenu", { bg = "none" })
    vim.api.nvim_set_hl(0,"Visual", { bg = "Grey" })
end

ColorMyPencils()
