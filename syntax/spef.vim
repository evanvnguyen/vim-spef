" SPEF syntax highlighting
if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword spefKeyword *SPEF *DESIGN *DATE *VENDOR *PROGRAM *VERSION
syn keyword spefKeyword *DESIGN_FLOW *DIVIDER *DELIMITER *BUS_DELIMITER
syn keyword spefKeyword *T_UNIT *C_UNIT *R_UNIT *L_UNIT
syn keyword spefKeyword *NAME_MAP *POWER_NETS *GROUND_NETS *PORTS
syn keyword spefKeyword *D_NET *CONN *CAP *RES *END
syn keyword spefKeyword *I *P *N *S *C *L *D

" Numbers (capacitance, resistance, coordinates)
syn match spefNumber '\v<\d+\.?\d*([eE][+-]?\d+)?>'

" Strings
syn region spefString start='"' end='"'

" Comments
syn match spefComment '//.*$'
syn region spefComment start='/\*' end='\*/'

" Net names (starting with *)
syn match spefNet '\*\d\+\>'
syn match spefNet '\*[A-Za-z_][A-Za-z0-9_]*'

" Highlighting
hi def link spefKeyword     Keyword
hi def link spefNumber      Number
hi def link spefString      String
hi def link spefComment     Comment
hi def link spefNet         Identifier

let b:current_syntax = "spef"
