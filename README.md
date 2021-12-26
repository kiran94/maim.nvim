# maim.nvim 

> Neovim plugin for taking screenshots

[![lint](https://github.com/kiran94/maim.nvim/actions/workflows/lint.yml/badge.svg)](https://github.com/kiran94/maim.nvim/actions/workflows/lint.yml)


Take Screenshots directly from [Neovim](https://github.com/neovim/neovim) and embed references into markdown documents. This plugin relies on [maim](https://github.com/naelstrof/maim) being installed on your system.

## Usage

```lua
use {'kiran94/maim.nvim', config = function() require('maim').setup() end }
```

Once installed, you can check if the plugin is ready to work via `:checkhealth maim`. Note that if you take the lazy loaded approach, the plugin will likely needs to be loaded to check health.

## Commands 

| Command                             | Description                                                                                  |
| --------                            | ------------                                                                                 |
| `:Maim output_path`                 | Take a screenshot and save to output_path                                                    |
| `:MaimMarkdown output_path [title]` | Take a screenshot and save a markdown reference to the current buffer. The title is optional.|

## Example 

Writing a Markdown file and need to take a screenshot from reference material and attach. You can use `:MaimMarkdown` to do this without leaving the editor. This will launch `maim` so you can take a screenshot, save the file to the specified location and then add a markdown link in your current buffer.

![demo](https://i.imgur.com/9UsdX0P.gif)

## Developing 

Assuming you are at the root of the repo.

1. run `make`
    - This will add the local plugin to your `runtimepath` and open the main `init.lua` along with a sample markdown file in a split.
2. Within Neovim, run `:checkhealth maim`
    - If you do not have `maim` installed then refer to [this](https://github.com/naelstrof/maim#installation).
