local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofumpt", "goimports-reviser", "golines" },
        gomod = { "gofumpt", "goimports-reviser" },
        gowork = { "gofumpt", "goimports-reviser" },
        gotmp = { "gofumpt", "goimports-reviser" },

        css = { "prettier" },
        html = { "prettier" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
    formatters = {
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=80" },
        },
    },
}

require("conform").setup(options)
