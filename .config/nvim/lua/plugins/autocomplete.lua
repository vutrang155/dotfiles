return {
  -- Override/Configure nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- LSP completion source
      "hrsh7th/cmp-nvim-lsp",
      -- Snippet completion source
      "saadparwaiz1/cmp_luasnip",
      -- Text completion source
      "hrsh7th/cmp-path",
      -- Buffer completion source
      "hrsh7th/cmp-buffer",
      -- Snippet engine
      "L3MON4D3/LuaSnip",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Set up the completion sources
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP source (most important)
        { name = "luasnip" },  -- Snippet source
      }, {
        { name = "buffer" },  -- Current buffer words
        { name = "path" },    -- File system paths
      })

      -- Key mappings for completion
      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        -- Use <C-j> and <C-k> to navigate the completion menu
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),

        -- Accept the currently selected item or trigger completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept selected item.

        -- Manual trigger of the completion menu
        ["<C-Space>"] = cmp.mapping.complete(),

        -- Snippet expansion and cycling (Crucial!)
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })

      -- Configure snippet behavior
      -- opts.snippet = {
      --   expand = function(args)
      --     luasnip.lsp_expand(args.body)
      --   end,
      -- }
      return opts
    end,
  },
  -- Configure LuaSnip (Snippet Engine)
  {
    "L3MON4D3/LuaSnip",
    -- Add all the standard snippet packages
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    opts = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
