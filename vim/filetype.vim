if exists("did_load_filetypes_userafter")
    finish
endif
let did_load_filetypes_userafter = 1

augroup filetypedetect
    " local filetype changes go here
    au BufRead,BufNewFile puppet.vim setfiletype puppet
augroup END
