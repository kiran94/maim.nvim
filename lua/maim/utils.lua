local M = {}

-- Produces a fully qualified path for the provided output path
-- Ensures that the current directory is respected
-- e.g if the user is within a repo:
--      README.md
--      src/
--          my_folder/
--              document.md
--              res/
--          my_other_folder/
--              document2.md
--              res/
-- If they run the plugin whilst inside 'my_folder' with output res/my_image.png
-- then the output image should go into src/my_folder/res/my_image.png
-- Some environments will interpret "res/my_image.png" as starting from the root repo which is usually
-- not what we want
M.get_current_buffer_directory = function(output_path, current_buffer, buffer_directory)
    if output_path:sub(1, 1) == "/" then
        return buffer_directory .. output_path
    else
        return buffer_directory .. "/" .. output_path
    end
end

return M
