local M = {}

function M.get_config(user_config)
    local default_config = {
        split = 'vertical' -- or horizontal
    }

    return vim.tbl_extend('keep', user_config or {}, default_config)
end

return M
