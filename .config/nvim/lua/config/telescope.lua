require("telescope").setup {
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_cursor{
            }
        }
    }
}

require('telescope').load_extension('media_files')
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require("telescope").load_extension("ui-select")
-- require('telescope').load_extension('dap')
