" (i: string) => (0|1)
function IsList(i)
  " split line into non-space words
  let l:chars = split(a:i, ' ')

  " check if the first word is a -
  return l:chars[0] == '-'
endfunction

" (i: string) => string
" returns the input string as a markdown list
function CreateMarkdownListIfNone(i)
  " set a new line to the current line
  let l:output = a:i

  " if intput is not a list, create one
  if IsList(l:output) != 1
    let l:output = '- ' . l:output
  endif

  return l:output
endfunction

" (i: string) => string
" takes a markdown list string and either adds a checkbox or toggles an existing checkbox
function ToggleMarkdownCheckbox(i)
  let l:output = a:i

  " check the current line to see if there are any checkboxes
  let l:match_result = matchstr(l:output, '\(\[ \]\|\[x\]\)')

  " if there's no match result then add a checkbox, else toggle the existing checkbox
  if l:match_result == ''
    let l:output = substitute(l:output, '-.\{-}', '- [ ]', 'g')
  else
    let l:opp_box = { '[x]': '[ ]', '[ ]': '[x]'}
    echom "ToggleMarkdownCheckbox: " . l:match_result
    let l:output = substitute(l:output, "\\(\\[ \\]\\|\\[x\\]\\)", l:opp_box[l:match_result], "g")
  endif

  " set the current line to the new line
  return l:output
endfunction

" (fs: Array<Function>, i: unknown) => void
function Compose(fs, i)
  let l:result = a:i

  for F in a:fs
    let l:result = F(l:result)
  endfor
endfunction

" (i: string) => string
function GetCurrentLine(i)
  return getline('.')
endfunction

" (i: string) => string
function SetCurrentLine(i)
  call setline('.', a:i)
  return a:i
endfunction

" () => void
function Checkbox()
  let fs = [function("GetCurrentLine"), function("CreateMarkdownListIfNone"), function("ToggleMarkdownCheckbox"), function("SetCurrentLine")]

  call Compose(fs, '')
endfunction
 
