local wk = require("which-key")

local telescope = require("telescope.builtin")
wk.add(
{
    -- Actions
    { "<leader>", group = "Actions" },
    { "<leader>o", ":Oil<CR>", desc = "Toggle oil" },
    { "<leader>p", ":BufferLinePick<CR>", desc = "Pick buffer" },

    -- Telescope
    { "<leader>f", group = "Telescope" },
    { "<leader>ff", telescope.find_files, desc = "Find files" },
    { "<leader>fg", telescope.live_grep, desc = "Live grep" },
    { "<leader>fb", telescope.buffers, desc = "Buffers" },
    { "<leader>fh", telescope.help_tags, desc = "Help tags" },
    { "<leader>fo", function() vim.cmd('Telescope file_browser path=%:p:h select_buffer=true') end, desc = "File browser" },
    { "<leader>fd", telescope.lsp_definitions, desc = "LSP Definitions" },
    { "<leader>fr", telescope.lsp_references, desc = "LSP References" },
    { "<leader>fe", telescope.diagnostics, desc = "LSP Diagnostics" },

    -- LSP
    { "<leader>l", group = "LSP" },
    { "<leader>lD", vim.lsp.buf.declaration, desc = "Declaration" },
    { "<leader>ld", vim.lsp.buf.definition, desc = "Definition" },
    { "<leader>lk", vim.lsp.buf.hover, desc = "Hover" },
    { "<leader>li", vim.lsp.buf.implementation, desc = "Implementation" },
    { "<leader>lK", vim.lsp.buf.signature_help, desc = "Signature help" },
    { "<leader>lt", vim.lsp.buf.type_definition, desc = "Type definition" },
    { "<leader>lr", vim.lsp.buf.rename, desc = "Rename" },
    { "<leader>lc", vim.lsp.buf.code_action, desc = "Code action" },
    { "<leader>lR", vim.lsp.buf.references, desc = "References" },
    { "<leader>lf", function() vim.lsp.buf.format { async = true } end, desc = "Format" },
    { "<leader>le", vim.diagnostic.open_float, desc = "Open diagnostic float" },
    { "<leader>l[", vim.diagnostic.goto_prev, desc = "Goto prev diagnostic" },
    { "<leader>l]", vim.diagnostic.goto_next, desc = "Goto next diagnostic" },
    { "<leader>lq", vim.diagnostic.setloclist, desc = "Set loclist" },

    -- LSP Workspace
    { "<leader>lw", group = "Workspace" },
    { "<leader>lwa", vim.lsp.buf.add_workspace_folder, desc = "Add workspace folder" },
    { "<leader>lwr", vim.lsp.buf.remove_workspace_folder, desc = "Remove workspace folder" },
    { "<leader>lwl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, desc = "List workspace folder" },
})
