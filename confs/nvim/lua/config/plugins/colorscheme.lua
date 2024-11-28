-- return {
-- 	"Mofiqul/dracula.nvim",
-- 	config = function()
-- 		vim.cmd([[colorscheme dracula]])
--
-- 		vim.cmd([[
-- 		     hi normal guibg=#282A36
-- 		  ]])
--
-- 		vim.cmd([[
-- 		     hi nvimtreenormal guibg=#282A36
-- 		  ]])
-- 	end,
-- }

-- return {
-- 	"askfiy/visual_studio_code",
-- 	config = function()
-- 		vim.cmd([[colorscheme visual_studio_code]])
-- 	end,
-- }

return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({ style = "warm" })
		vim.cmd([[colorscheme onedark]])
	end,
}
