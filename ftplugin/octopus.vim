function! octopus#show_help(word)
    if a:word == ''
        return
    endif

    execute 'split term://oct-help -p ' . a:word
endfunction


map <buffer> K <cmd>call octopus#show_help('<cword>')<cr>
