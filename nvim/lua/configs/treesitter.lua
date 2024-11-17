local options = {
    ensure_installed = {
        "bash",
        "fish",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "html",
        "css",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = {
        enable = true,
    },
}

require("nvim-treesitter.configs").setup(options)
