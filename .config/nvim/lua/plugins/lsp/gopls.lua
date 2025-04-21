local util = require('lspconfig/util')

return {
    cmd = { 'gopls' },
    filetypes = { "go", "gomod", "gowork", "gotmpl", "templ" },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
        gopls = {
            usePlaceholders = true,
            analyses = {
                unusedparams = true
            }
        }
    }
}
