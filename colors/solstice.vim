" Solstice color scheme, based on ir_black
" ----------------------------------------------------------------------
" Created by IMEOS
"
" Text colors:
"  normal:                            #f6f3e8
"  string:                            #a8ff60
"    string inner (punc, code, etc):  #00A0A0
"  number:                            #e59496
"  comments:                          #7c7c7c
"  keywords:                          #96cbfe
"  operators:                         #ffffff
"  class:                             #ffffb6
"  method declaration name:           #ffd2a7
"  regular expression:                #e9c062
"    regexp alternate:                #ff8000
"    regexp alternate 2:              #b18a3d
"  variable:                          #c6c5fe
"  red color (used for whatever):     #ff6c60
"     light red:                      #ffb6b0
"  brown:                             #E18964
"  lightpurpleish:                    #ffccff
"
" Interface colors:
"  background color:                  #000000
"  cursor (where underscore is used): #ffa560
"  cursor (where block is used):      #ffffff
"  visual selection:                  #1d1e2c
"  current line:                      #151515
"  search selection:                  #07281c
"  line number:                       #3d3d3d


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
let colors_name = "solstice"


" Interface
hi Normal           guifg=#f6f3e8     guibg=black       gui=NONE
hi NonText          guifg=#070707     guibg=black       gui=NONE

hi Cursor           guifg=black       guibg=white       gui=NONE
hi LineNr           guifg=#3D3D3D     guibg=black       gui=NONE

hi VertSplit        guifg=#202020     guibg=#202020     gui=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=NONE
hi StatusLineNC     guifg=black       guibg=#202020     gui=NONE

hi Folded           guifg=#a0a8b0     guibg=#384048     gui=NONE
hi Title            guifg=#f6f3e8     guibg=NONE        gui=bold
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE

hi WildMenu         guifg=green       guibg=yellow      gui=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl
hi ErrorMsg         guifg=white       guibg=#ff6c60     gui=BOLD
hi WarningMsg       guifg=white       guibg=#ff6c60     gui=BOLD

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD
  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE
  hi Search         guifg=NONE        guibg=NONE        gui=underline
endif

" Syntax highlighting
hi Comment          guifg=#7C7C7C     guibg=NONE        gui=NONE
hi String           guifg=#A8FF60     guibg=NONE        gui=NONE
hi Number           guifg=#e59496     guibg=NONE        gui=NONE

hi Keyword          guifg=#96CBFE     guibg=NONE        gui=NONE
hi PreProc          guifg=#96CBFE     guibg=NONE        gui=NONE
hi Conditional      guifg=#6699CC     guibg=NONE        gui=NONE

hi Todo             guifg=#8f8f8f     guibg=NONE        gui=NONE
hi Constant         guifg=#99CC99     guibg=NONE        gui=NONE

hi Identifier       guifg=#C6C5FE     guibg=NONE        gui=NONE
hi Function         guifg=#FFD2A7     guibg=NONE        gui=NONE
hi Type             guifg=#FFFFB6     guibg=NONE        gui=NONE
hi Statement        guifg=#6699CC     guibg=NONE        gui=NONE

hi Special          guifg=#E18964     guibg=NONE        gui=NONE
hi Delimiter        guifg=#00A0A0     guibg=NONE        gui=NONE
hi Operator         guifg=white       guibg=NONE        gui=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE
hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier


" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier


" Special for Javascript
hi link javaScriptNumber      Number


" Special for Python
"hi  link pythonEscape         Keyword


" Special for CSharp
hi  link csXmlTag             Keyword
