require("nvim-treesitter.configs").setup({
    ensure_installed = {
		"c",
		"lua",
		"vim",
		"help",
		"python",
		"cpp",
		"markdown",
		"dockerfile",
		"bash"
	},
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
})

