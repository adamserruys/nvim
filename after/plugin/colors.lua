local status = pcall(require,'zenbones')
if (not status) then return end

vim.g.rosebones = { darkness = "stark", lighten_line_nr = 69 }
vim.cmd.colorscheme("rosebones")
