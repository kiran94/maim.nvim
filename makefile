run:
	nvim --cmd "set rtp+=./" --cmd 'lua require("maim").setup()' -o lua/maim/init.lua -o sample/parquet.md

help:
	nvim --cmd "set rtp+=./" --cmd 'lua require("maim").setup()' --cmd 'h maim'
