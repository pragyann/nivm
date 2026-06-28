return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    lazy = false,
    config = function()
	require("nvim-treesitter.configs").setup({
	    highlight = { enable = true },
	    indent = { enable = true },
	    -- autotag = { enable = true },
	    ensure_installed = { "lua", "tsx", "typescript", "php", "python", "javascript", "html", "css", "json" },
	    -- auto_install = false,
	})
    end
}
