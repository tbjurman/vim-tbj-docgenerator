"
" Vim syntax file for TBJ:s docgenerator format
"
if exists("b:current_syntax")
	finish
endif

syn match mkeyword '@a'
syn match mkeyword '@blockdiag'
syn match mkeyword '@code'
syn match mkeyword '@debug'
syn match mkeyword '@dot'
syn match mkeyword '@end'
syn match mkeyword '@h.'
syn match mkeyword '@img'
syn match mkeyword '@include'
syn match mkeyword '@li'
syn match mkeyword '@nop'
syn match mkeyword '@ol'
syn match mkeyword '@p'
syn match mkeyword '@refdef'
syn match mkeyword '@seqdiag'
syn match mkeyword '@table'
syn match mkeyword '@toc'
syn match mkeyword '@todo'
syn match mkeyword '@tr'
syn match mkeyword '@ul'

" document header 
syn match mdocumentHeader '@title'
syn match mdocumentHeader '@copyright'
syn match mdocumentHeader '@version'
syn match mdocumentHeader '@docinfo'
syn match mdocumentHeader '@autotoc'
syn match mdocumentHeader '@author'


" comments
syn region rcomment start='^//' end='$'
syn region rcomment start=' //' end='$'
syn region rcomment start='@nop' end='$'

"hi def link kdocumentStart ModeMsg
hi def link mdocumentHeader ModeMsg
hi def link mkeyword Type
hi def link rcomment Comment

let b:current_syntax = "tbj-docgenerator"
