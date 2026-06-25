-- ```<Enter> で
-- ```x <- ここに挿入モードでカーソルが当たるようにする
-- ```
vim.keymap.set("i", "```<Enter>", "```<CR>```<Esc><Up><S-a>", { noremap = true })
