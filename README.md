# GCompile 

This is a personal plugin just to compile and run simple c++ files from neovim.

## Configure

<details>
<summary>Lazy</summary>

```lua
return {
    'kutiny/gcompile.nvim',
    config = function ()
        local mod = require('gcompile')
        mod.setup({
            split = 'horizontal'
        })
    end
}
```

</details>

## Custom user commands

### GCompileAndRun

Custom user command `:GCompileAndRun`, this commands open a split terminal, compiles the current file and tries to execute the compiled result.

```lua
vim.keymap.set("n", "<Leader>rr", ":GCompileAndRun<CR>")
```

### GCompileRunAndExit

Custom user command `:GCompileRunAndExit`, this commands open a split terminal, compiles the current file and tries to execute the compiled result, once it has finished, exit the process (a.k.a closes the panel).

```lua
vim.keymap.set("n", "<Leader>rr", ":GCompileRunAndExit<CR>")
```
