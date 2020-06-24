" Vim syntax file
" Language: MARC and related formats
" Maintainer: Jakob Voß
" Latest Revision: 24 June 2020

if exists("b:current_syntax")
  finish
endif

" Optional MARCMaker tag prefix
syn match prefix '^=' nextgroup=marctag

" MARC tag and optional indicator 
syn match indicators '[0-9A-Za-z#\\_]\{1,2}' contained nextgroup=subfields
syn match marctag 'Leader\|LDR\|[0-9][0-9][0-9]' nextgroup=length,fixedfield,indicators skipwhite

" Fixed fields are detected by absence of subfield separator
syn match fixedvalue /.\+/ contained
syn match fixedfield /[^$‡ǂ]\+\n/ contained

" Optional length explicitly indicates a fixed field
syn match length '/\d\+-\d\+' nextgroup=fixedvalue


" PICA tag and optional occurrence
syn match picatag '[0-2]\d\d[A-Z@]' nextgroup=occslash
syn match occslash '/' nextgroup=occurrence
syn match occurrence '\d\d\d\?' contained nextgroup=subfields

" subfields
syn region subfields start='[$‡ǂ]' end='\n' transparent contains=subfield,value,escaped oneline
syn match value '[^$‡ǂ]\+' contained display
syn match code '[a-zA-Z0-9]' contained display
syn match subfield '[$‡ǂ]' contained display nextgroup=code
syn match escaped '[$‡ǂ][$‡ǂ]' contained display

let b:current_syntax = "marc"

" Mapping of syntax elements to vim highlight groups:
" Comment|Constant|Identifier|Statement|PreProc|Type|Special|Underline|Ignore|Error|Todo
hi def link marctag     Identifier
hi def link picatag     Identifier

hi def link subfield    Comment

hi def link code        Special
hi def link occslash    Comment
hi def link occurrence  Identifier
hi def link indicators  Identifier

hi def link value       Statement
hi def link escaped     Statement
hi def link fixedfield  Statement
hi def link fixedvalue  Constant

hi def link length      Comment
hi def link prefix      Comment
