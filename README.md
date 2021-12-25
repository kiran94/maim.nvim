# maim.nvim 

Neovim plugin for taking screenshots 

Take Screenshots directly from [Neovim](https://github.com/neovim/neovim) and embed references into markdown documents. This plugin relies on [maim](https://github.com/naelstrof/maim) being installed on your system.

## Commands 

| Command                             | Description                                                           |
| --------                            | ------------                                                          |
| `:Maim output_path`                 | Take a screenshot                                                     |
| `:MaimMarkdown output_path [title]` | Take a screenshot and save a markdown reference to the current buffer |

## Example 

Writing a Markdown file and need to take a screenshot from reference material and attach. You can use `:MaimMarkdown` to do this without leaving the editor. This will launch `maim` so you can take a screenshot, save the file to the specified location and then add a markdown link in your current buffer.

![maim_sample](https://media.giphy.com/media/3XXUv33JRQNzSKWaPr/giphy.gif)

## Developing 

Assuming you are at the root of the repo.

1. Ensure you have [maim](https://github.com/naelstrof/maim#installation) installed.
2. run `make`
    - This will add the local plugin to your `runtimepath` and open the main `init.lua` along with a sample markdown file in a split.
