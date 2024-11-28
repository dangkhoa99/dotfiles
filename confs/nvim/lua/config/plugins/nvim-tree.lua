return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")
		local g = vim.g

		-- recommended settings from nvim-tree documentation
		g.loaded_netrw = 1
		g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		vim.cmd([[ 
      hi NvimTreeSpecialFile guifg=#ff7800, 
      hi NvimTreeWindowPicker gui=bold guibg=#83a598 guifg=#fbf1c7
    ]])

		-- configure nvim-tree
		nvimtree.setup({
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				show_on_open_dirs = false,
			},
			view = {
				width = {
					min = 35,
					max = 80,
				},
			},
			renderer = {
				highlight_git = true,
				-- group_empty = true,
				indent_markers = {
					enable = true,
				},
			},
			update_focused_file = {
				enable = true,
				ignore_list = {},
			},
			modified = {
				enable = true,
				show_on_dirs = false,
				show_on_open_dirs = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap
		local nt_api = require("nvim-tree.api")

		keymap.set("n", "<C-b>", nt_api.tree.toggle, { noremap = true, silent = true })
		keymap.set("n", "tf", nt_api.tree.focus)
		keymap.set("n", "tc", nt_api.tree.collapse_all)
	end,
}
