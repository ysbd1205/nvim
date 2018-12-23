syntax keyword inStatement run fix unfix region
syntax keyword inFunction variable

syn match inComment	"#.*$"

syn match   pythonNumber	"\<0[oO]\=\o\+[Ll]\=\>"
syn match   pythonNumber	"\<0[xX]\x\+[Ll]\=\>"
syn match   pythonNumber	"\<0[bB][01]\+[Ll]\=\>"
syn match   pythonNumber	"\<\%([1-9]\d*\|0\)[Ll]\=\>"
syn match   pythonNumber	"\<\d\+[jJ]\>"
syn match   pythonNumber	"\<\d\+[eE][+-]\=\d\+[jJ]\=\>"
syn match   pythonNumber	"\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@="
syn match   pythonNumber	"\%(^\|\W\)\zs\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>"

highlight link inStatement Statement
highlight link inComment Comment
highlight link inFunction Function
highlight link pythonNumber Number
