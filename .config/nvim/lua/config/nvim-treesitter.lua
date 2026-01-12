require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "cpp", "rust", "make", "markdown", "python", "dockerfile", "go" },
    sync_install = false,

    highlight = {
        enable = true,
        disable = function(_, buf)
            local max_filesize = 1000 * 1024 -- 1000 KB 
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false,
    },
}
