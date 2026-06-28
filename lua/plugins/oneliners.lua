return {
    { -- This helps with ssh tunneling and copying to clipboard
        'ojroques/vim-oscyank',
    },
    { -- Git plugin
        'tpope/vim-fugitive',
    },
    -- { -- Show CSS Colors
    -- 'brenoprata10/nvim-highlight-colors',
    -- config = function()
    --     require('nvim-highlights-colors').setup({})
    -- end
    -- }
    {
        "hrsh7th/nvim-cmp",
        lazy = false,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        lazy = false,
    }
}
