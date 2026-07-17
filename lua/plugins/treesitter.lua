return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    config = function()
        local parsers = {
            "lua",
            "tsx",
            "typescript",
            "php",
            "python",
            "javascript",
            "html",
            "css",
            "json",
            "markdown",
            "markdown_inline",
        }

        local filetypes = {
            "lua",
            "typescript",
            "typescriptreact",
            "javascript",
            "javascriptreact",
            "php",
            "python",
            "html",
            "css",
            "json",
            "markdown",
        }

        local ok, treesitter = pcall(require, "nvim-treesitter")

        if ok and type(treesitter.install) == "function" then
            treesitter.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            treesitter.install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = filetypes,
                callback = function()
                    vim.treesitter.start() -- Enables Treesitter highlighting.
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        else
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
                indent = { enable = true },
                -- Markdown parsers are needed for LSP hover windows opened by K.
                ensure_installed = parsers,
            })
        end
    end
}
