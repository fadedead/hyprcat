return {
	"EdenEast/nightfox.nvim",
	config = function()

		require("nightfox").setup({
			options = {
				module_default = false,
			},
			palettes = {
				-- Custom duskfox with black background
				duskfox = {
					bg1 = "#000000", -- Black background
					bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
					bg3 = "#121820", -- 55% darkened from stock
					sel0 = "#131b24", -- 55% darkened from stock
				},
			},
			specs = {
				all = {
					inactive = "bg0", -- Default value for other styles
				},
				duskfox = {
					inactive = "#090909", -- Slightly lighter then black background
				},
			},
			groups = {
				all = {
					NormalNC = { fg = "fg1", bg = "bg1" }, -- Non-current windows
				},
			},
			modules = {
				options = "duskfox",
				terminal = "duskfox",
				lsp = "duskfox",
				gitsigns = "duskfox",
				telescope = "duskfox",
				nvimtree = "duskfox",
				indent_blankline = "duskfox",
				whichkey = "duskfox",
				lualine = "duskfox",
				notify = "duskfox",
				cmp = "duskfox",
				dap = "duskfox",
				-- treesitter = "duskfox",
				-- dashboard = "duskfox",
				-- neogit = "duskfox",
				-- hop = "duskfox",
				-- vista = "duskfox",
				-- fern = "duskfox",
				-- barbar = "duskfox",
				-- bufferline = "duskfox",
				-- lightspeed = "duskfox",
				-- NvimTree = "duskfox",
				-- indent_blankline

			},
		})

	vim.cmd.colorscheme "duskfox"

	end
}
