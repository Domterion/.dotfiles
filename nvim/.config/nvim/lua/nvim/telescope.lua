
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,
        file_ignore_patterns = {'.git/*', 'target/*', 'node_modules/*'},

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('git_worktree')
require('telescope').load_extension('fzy_native')

local M = {}

M.search_dotfiles = function() 
  require('telescope.builtin').find_files({
    prompt_title = '> Dotfiles <',
    cwd = '~/.dotfiles/',
    hidden = true
  })
end

return M
