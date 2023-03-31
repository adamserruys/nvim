local mark =require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>1", ui.nav_next)
vim.keymap.set("n", "<leader>2", ui.nav_prev)
