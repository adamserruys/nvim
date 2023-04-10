local status = pcall(require,'zenbones')
if (not status) then return end

vim.cmd.colorscheme("rosebones")
vim.g.rosebones = { darkness = 'stark' }
