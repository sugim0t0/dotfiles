-- Settings for Rust

-- Autocmd
vim.api.nvim_create_autocmd({"BufRead"}, { pattern = {"*.rs"}, command = "setlocal tags=./rusty-tags.vi;/",})
vim.api.nvim_create_autocmd({"BufWritePost"}, { pattern = {"*.rs"}, command = "silent! exec \"!rusty-tags vi --quiet --start-dir=\" . expand('%:p:h') . \"&\" | redraw!",})

