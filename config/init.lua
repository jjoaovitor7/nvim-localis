vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
	local repo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require("configs.lazy")

-- load plugins
require("lazy").setup({
	{
		"NvChad/NvChad",
		lazy = false,
		branch = "v2.5",
		import = "nvchad.plugins",
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"uhs-robert/sshfs.nvim",
		opts = {
			ssh_configs = {
				"~/.ssh/config",
				"/etc/ssh/ssh_config",
			},
		},
	},
	{
		"rest-nvim/rest.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			highlight = {
				enable = true,
			},
			opts = function(_, opts)
				opts.ensure_installed = opts.ensure_installed or {}
				table.insert(opts.ensure_installed, "http")
			end,
		},
	},
	{ import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("options")
require("autocmds")

vim.schedule(function()
	require("mappings")
end)

vim.opt.list = true
vim.opt.listchars = {
	space = "·",
	tab = "▶ ",
	trail = "·",
	eol = "¬",
}

require("conform").setup({
	formatters_by_ft = {},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 512,
		lsp_format = "never",
	},
})
