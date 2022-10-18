local mock = require("luassert.mock")

describe("get_current_buffer_directory", function()
    it("respects output path /", function()
        local utils = require("maim.utils")

        local output_path = "/res/image.png"
        local current_buffer = "/home/hello/document/projects/my_project/subfolder/document.md"
        local current_directory = "/home/hello/document/projects/my_project/subfolder"
        local expected = "/home/hello/document/projects/my_project/subfolder/res/image.png"

        local output = utils.get_current_buffer_directory(output_path, current_buffer, current_directory)

        assert.are.same(expected, output)
    end)

    it("respects output path", function()
        local utils = require("maim.utils")

        local output_path = "res/image.png"
        local current_buffer = "/home/hello/document/projects/my_project/subfolder/document.md"
        local current_directory = "/home/hello/document/projects/my_project/subfolder"
        local expected = "/home/hello/document/projects/my_project/subfolder/res/image.png"

        local output = utils.get_current_buffer_directory(output_path, current_buffer, current_directory)

        assert.are.same(expected, output)
    end)
end)
