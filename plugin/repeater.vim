" File:     repeater.vim
" Desc:     Repeats an item {n} times
" Author:   Jon-Michael Deldin <dev@jmdeldin.com>

function! s:Repeater(sep, ...)
    let sep=a:sep
    if a:0 == 1
        let ct=a:1
    else
        " If a count is not specified, use the preceding line's length
        let ln=line('.')-1
        let ct=col([ln,"$"])
    endif

    let out=""
    for i in range(ct)
        let out=out.sep
    endfor
    exe 'norm! i'.out
endfunction

command -nargs=+ Repeater :call <SID>Repeater(<f-args>)

