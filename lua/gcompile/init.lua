local M = {}
local config = require('gcompile.config')

local userconf = {}

function M.setup(user_config)
    userconf = config.get_config(user_config)

    vim.api.nvim_create_user_command('GCompileAndRun', M.compile_and_run, {})

    vim.api.nvim_create_user_command('GCompileRunAndExit', function()
        M.compile_and_run(true)
    end, {})
end

function M.compile_and_run(exit_on_end)
    local file = vim.fn.expand("%:p")
    if userconf.split == 'vertical' then
        vim.cmd("vsplit | terminal")
    else
        vim.cmd("split | terminal")
    end

    local exit_part = ''

    if exit_on_end == true then
        exit_part = 'exec '
    end

    local command = ':call jobsend(b:terminal_job_id, "g++ -o a.out ' .. file .. ' && ' .. exit_part .. './a.out\\n")'
    vim.cmd(command)
    vim.cmd(":norm i")
end

return M
