return {

    "neovim/nvim-lspconfig",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    "folke/which-key.nvim",
    { "folke/neoconf.nvim",               cmd = "Neoconf" },

    {
        'stevearc/oil.nvim',
        opts = {
            view_options = {
                show_hidden = true,
            }
        },
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
    },

    -- TELESCOPE
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        'nvim-telescope/telescope-ui-select.nvim'
    },
    {
        "nvim-telescope/telescope-media-files.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        name = "fzf",
        build =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release&& cmake --install build --prefix build'
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    { 'nvim-telescope/telescope-dap.nvim' },

    -- Buffer line and lua line
    { 'nvim-lualine/lualine.nvim',        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true } },
    { 'akinsho/bufferline.nvim',          version = "*",                                                dependencies = 'nvim-tree/nvim-web-devicons' },

    { "catppuccin/nvim",                  name = "catppuccin",                                          priority = 1000 },

    -- Markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },

        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

}
