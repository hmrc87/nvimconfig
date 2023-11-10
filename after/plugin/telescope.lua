local builtin = require('telescope.builtin')
local default_opts = {noremap = true}
vim.keymap.set('n', '<leader>pf', function() 
    builtin.find_files({ hidden = true }) 
end, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
