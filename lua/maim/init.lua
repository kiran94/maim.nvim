local M = {}

M.setup = function()
    vim.cmd([[ command! -nargs=+ Maim lua require('maim').invoke_screenshot(<f-args>) ]])
    vim.cmd([[ command! -nargs=+ MaimMarkdown lua require('maim').invoke_screenshot_to_markdown(<f-args>) ]])
end

--- Invokes the Screenshot Executable and sends the output to the given output path
--- @param output_path string the path to save the screenshot
--- @return table output from the command, empty if successful
M.invoke_screenshot = function(output_path)
    assert(output_path ~= nil, "output_path must be a provided")
    assert(type(output_path) == "string", "output_path must be a string")

    local executable = "maim"
    local file_options = "-s"

    local command = executable .. " " .. file_options .. " " .. output_path
    -- vim.notify(command, 'debug')

    return vim.fn.systemlist(command)
end

--- Invokes the Screenshot Executable and attach
--  a markdown image reference directed to the captured image
--  to the current buffer
--- @param output_path string the path to save the screenshot
--- @param title string the image title
M.invoke_screenshot_to_markdown = function(output_path, title)
    title = title or "image"
    local command_output = M.invoke_screenshot(output_path)
    local image_markdown = "![" .. title .. "](" .. output_path .. ")"

    if next(command_output) ~= nil then
        vim.notify("Could not write to " .. output_path)
        vim.notify(command_output)
        return
    end

    if not vim.fn.exists(output_path) then
        vim.notify("could not locate " .. output_path .. " but the command looked successful")
        return
    end

    vim.cmd("normal A" .. image_markdown)
end

return M
