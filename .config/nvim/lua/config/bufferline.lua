vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        offsets = { {
            filetype = "NvimTree",
            text = "File Directory",
            highlight = "Directory",
            seperator = true
        } },
        separator_style = "slope",
        hover = {{
            enabled = true,
            delay = 200,
            reveal = { 'close' }
        }},
    }
}
