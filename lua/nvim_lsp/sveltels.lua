local configs = require'nvim_lsp'.configs
local util = require'nvim_lsp'.util

local bin_name = "svelteserver"

configs.sveltels = {
    default_config = {
        cmd = {bin_name};
        filetypes = {"svelte"};
        root_dir = util.root_pattern("package.json", "svelte.js.config");
    };
    docs = {
        description = [[
https://github.com/sveltejs/language-tools

Svelte language server
Install through `npm i -g svelte-language-server`
        ]];
        default_config = {
            root_dir = [[root_pattern("package.json", "svelte.config.js")]];
        }
    }
}
