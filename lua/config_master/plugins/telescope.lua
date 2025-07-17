local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>fz', builtin.find_files, {})
vim.keymap.set('n', '<leader>gz', builtin.git_files, {})
vim.keymap.set('n', '<leader>grp', builtin.live_grep, {})-- needs ripgrep installed with brew
vim.keymap.set('n', '<leader>grpb', builtin.current_buffer_fuzzy_find, {})
