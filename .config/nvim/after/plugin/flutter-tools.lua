require("flutter-tools").setup {
    flutter_path = vim.fn.expand('$HOME/fvm/versions/stable/bin/flutter'),
    lsp = {
        settings = {
            analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache/"),
                vim.fn.expand('$HOME/fvm/versions/stable/'),
            }
        }
    }
}

