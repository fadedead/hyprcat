-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Page scroll to center
vim.keymap.set({ 'n', 'v' }, "<C-d>", "<C-d>zz")
vim.keymap.set({ 'n', 'v' }, "<C-u>", "<C-u>zz")

-- Space paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Neo Tree
vim.keymap.set('n', '<leader>f', '<Cmd>Neotree toggle<CR>')

-- Formating
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
    })
end, { desc = "Format file or range (in visual mode)" })

-- Linting
vim.keymap.set("n", "<leader>l", function()
    require("lint").try_lint()
end, { desc = "Trigger linting for current file" })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>la", function() harpoon:list():append() end, { desc = "Add File To Harpoon List" })
vim.keymap.set("n", "<leader>lv", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "Show Harpoon List" })
vim.keymap.set("n", "<C-h>", function() harpoon:list():next({ ui_nav_wrap = true }) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():prev({ ui_nav_wrap = true }) end)
