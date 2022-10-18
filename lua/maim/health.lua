local M = {}

M.check = function()
    vim.health.report_start("maim.nvim")

    local executable = "maim"
    local is_executable = vim.fn.executable(executable) > 0

    if is_executable then
        vim.health.report_ok(executable .. " found!")
    else
        vim.health.report_error(executable .. " is either not installed or is not within path")
    end
end

return M
