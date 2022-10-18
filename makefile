run:
	nvim --cmd "set rtp+=./" --cmd 'lua require("maim").setup()' -o lua/maim/init.lua -o sample/parquet.md

help:
	nvim --cmd "set rtp+=./" --cmd 'lua require("maim").setup()' --cmd 'h maim'

test:
	nvim --cmd "set rtp+=./" --headless -c "PlenaryBustedDirectory lua/tests/ { minimal_init = 'lua/tests/setup.vim' }"

health:
	nvim --cmd "set rtp+=./" --cmd 'lua require("maim").setup()' --cmd 'checkhealth maim'
