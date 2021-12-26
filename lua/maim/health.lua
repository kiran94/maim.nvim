local M = {}
local health_start = vim.fn["health#report_start"]
local health_ok = vim.fn["health#report_ok"]
local health_error = vim.fn["health#report_error"]
-- local health_warn = vim.fn["health#report_warn"]
-- local health_info = vim.fn["health#report_info"]

M.check = function()
    health_start("maim.nvim")

    local executable = "maim"
    local is_executable = vim.fn.executable(executable) > 0

    if is_executable then
        health_ok(executable .. " found!")
    else
        health_error(executable .. " is either not installed or is not within path")
    end
end

return M
