return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()

            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
        end,
    },
    {
        "kylechui/nvim-surround",
        event = { "BufReadPost", "BufNewFile" },
        config = true,
    },
    {
        "jinh0/eyeliner.nvim",
        keys = {
            { "f", mode = { "n", "x", "o" } },
            { "F", mode = { "n", "x", "o" } },
            { "t", mode = { "n", "x", "o" } },
            { "T", mode = { "n", "x", "o" } },
        },
        opts = {
            highlight_on_key = true,
            dim = true,
        },
    },
}
