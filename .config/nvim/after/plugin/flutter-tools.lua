require("flutter-tools").setup {
    flutter_path = '/home/yupri/fvm/versions/stable/bin/flutter',
    lsp = {
        settings = {
            analysisExcludedFolders = {
                "/home/yupri/.pub-cache/",
                '/home/yupri/fvm/versions/stable/',
            }
        }
    }
}

