ci: neorocks test
	echo 'DONE!'

test:
	# nvim --headless -c 'lua require("plenary.test_harness"):test_directory("luaunit", "./tests/plenary/lu/")'
	nvim --headless -u 'scripts/minimal.vim' -c 'lua require("plenary.test_harness"):test_directory("busted", "./tests/plenary/bu/")'
	nvim --headless -u 'script/minimal.vim' -c 'echo "WOW"' -c "qa!"

neorocks:
	nvim -u scripts/minimal.vim --noplugin -c 'lua require("plenary.neorocks").setup(true)' --headless
	nvim --headless -u 'scripts/minimal.vim' -c 'lua require("plenary.neorocks").install("penlight")'
