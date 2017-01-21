setlocal complete-=i
setlocal synmaxcol=120 " don't syntax highlight very long lines
setlocal foldmethod=syntax

iabbrev <buffer> pry! require 'pry'; binding.pry
