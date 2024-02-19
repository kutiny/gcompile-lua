local M = {
    compile = function()
        local file = vim.fn.expand("%:p")
        vim.cmd("split | terminal")
        local command = ':call jobsend(b:terminal_job_id, "g++ -o a.out ' .. file .. ' && exec ./a.out\\n")'
        vim.cmd(command)
    end
}

return M

