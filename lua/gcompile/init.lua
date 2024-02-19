local M = {}

function M.compile_and_run(exit_on_end)
    local file = vim.fn.expand("%:p")
    vim.cmd("split | terminal")
    local exit_part = ''
    if (exit_on_end) then
        exit_part = 'exec '
    end

    local command = ':call jobsend(b:terminal_job_id, "g++ -o a.out ' .. file .. ' && ' .. exit_part .. './a.out\\n")'
    vim.cmd(command)
end

return M

