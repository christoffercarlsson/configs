set background=dark

hi! clear

if exists('syntax_on')
    syntax reset
endif

set notermguicolors

hi! Normal ctermbg=NONE ctermfg=NONE
hi! NonText ctermfg=0
hi! Comment ctermfg=8 cterm=italic
hi! Constant ctermfg=3
hi! Error ctermfg=1
hi! Identifier ctermfg=9
hi! Function ctermfg=4
hi! Special ctermfg=13
hi! Statement ctermfg=5
hi! String ctermfg=2
hi! Operator ctermfg=6
hi! Boolean ctermfg=3
hi! Label ctermfg=14
hi! Keyword ctermfg=5
hi! Exception ctermfg=5
hi! Conditional ctermfg=5
hi! PreProc ctermfg=13
hi! Include ctermfg=5
hi! Macro ctermfg=5
hi! StorageClass ctermfg=11
hi! Structure ctermfg=11
hi! Todo ctermbg=12 ctermfg=0 cterm=bold
hi! Type ctermfg=11
hi! Underlined cterm=underline
hi! Bold cterm=bold
hi! Italic cterm=italic
hi! Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
hi! StatusLine ctermbg=0 ctermfg=15 cterm=NONE
hi! VertSplit ctermfg=8 ctermbg=NONE cterm=NONE
hi! TabLine ctermbg=0 ctermfg=7
hi! TabLineFill ctermbg=NONE ctermfg=0
hi! TabLineSel ctermbg=11 ctermfg=0
hi! Title ctermfg=4 cterm=bold
hi! CursorLine ctermbg=NONE ctermfg=NONE cterm=NONE
hi! Cursor ctermbg=15 ctermfg=0
hi! CursorColumn ctermbg=0
hi! LineNr ctermfg=8
hi! CursorLineNr ctermfg=6 cterm=NONE
hi! helpLeadBlank ctermbg=NONE ctermfg=NONE
hi! helpNormal ctermbg=NONE ctermfg=NONE
hi! Visual ctermbg=0 ctermfg=NONE
hi! VisualNOS ctermbg=8 ctermfg=15 cterm=bold
hi! Pmenu ctermbg=0 ctermfg=15 cterm=NONE
hi! PmenuSbar ctermbg=0 ctermfg=7 cterm=NONE
hi! PmenuSel ctermbg=8 ctermfg=15 cterm=bold
hi! PmenuThumb ctermbg=8 ctermfg=NONE cterm=NONE
hi! FoldColumn ctermfg=7
hi! Folded ctermfg=12
hi! WildMenu ctermbg=0 ctermfg=15 cterm=NONE
hi! SpecialKey ctermfg=0
hi! Search ctermbg=11 ctermfg=0
hi! Directory ctermfg=4
hi! MatchParen ctermbg=0 ctermfg=3 cterm=bold
hi! SpellBad cterm=undercurl
hi! SpellCap cterm=undercurl
hi! SpellLocal cterm=undercurl
hi! SpellRare cterm=undercurl
hi! ColorColumn ctermbg=8
hi! SignColumn ctermfg=7 ctermbg=NONE
hi! ModeMsg ctermbg=15 ctermfg=0 cterm=bold
hi! MoreMsg ctermfg=4
hi! Question ctermfg=4
hi! Conceal ctermfg=8
hi! ToolbarLine ctermbg=0 ctermfg=15
hi! ToolbarButton ctermbg=8 ctermfg=15
hi! debugPC ctermfg=7
hi! debugBreakpoint ctermfg=8
hi! ErrorMsg ctermfg=1 cterm=bold,italic
hi! WarningMsg ctermfg=11
hi! DiffAdd ctermbg=10 ctermfg=0
hi! DiffChange ctermbg=12 ctermfg=0
hi! DiffDelete ctermbg=9 ctermfg=0
hi! DiffText ctermbg=14 ctermfg=0
hi! diffAdded ctermfg=10
hi! diffRemoved ctermfg=9
hi! diffChanged ctermfg=12
hi! diffOldFile ctermfg=11
hi! diffNewFile ctermfg=13
hi! diffFile ctermfg=12
hi! diffLine ctermfg=7
hi! diffIndexLine ctermfg=14
hi! healthError ctermfg=1
hi! healthSuccess ctermfg=2
hi! healthWarning ctermfg=3
hi! NormalFloat ctermbg=0 ctermfg=15
hi! FloatBorder ctermbg=0 ctermfg=7
hi! FloatShadow ctermbg=0 ctermfg=15
hi! StatusLineNormalMode ctermbg=4 ctermfg=0
hi! StatusLineInsertMode ctermbg=5 ctermfg=0
hi! StatusLineVisualMode ctermbg=6 ctermfg=0
hi! StatusLineCommandMode ctermbg=2 ctermfg=0
hi! StatusLineReplaceMode ctermbg=3 ctermfg=0
hi! StatusLineFilePath ctermbg=8 ctermfg=15

hi! link EndOfBuffer NonText
hi! link SpecialComment Special
hi! link Define PreProc
hi! link PreCondit PreProc
hi! link Number Constant
hi! link Float Number
hi! link Typedef Type
hi! link SpecialChar Special
hi! link Debug Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link WinSeparator VertSplit
hi! link WinBar StatusLine
hi! link WinBarNC StatusLineNC
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StatusLinePercentage StatusLineFilePath
hi! link StatusLineConfirmMode StatusLineCommandMode
hi! link StatusLineTerminalMode StatusLineCommandMode
hi! link StatusLineSelectMode StatusLineVisualMode
hi! link StatusLineNC VertSplit
hi! link QuickfixLine Visual
hi! link IncSearch Search
hi! link CurSearch Search

if has('nvim')
    hi! @variable ctermfg=15
    hi! @variable.builtin ctermfg=1
    hi! @variable.parameter ctermfg=1
    hi! @variable.member ctermfg=1
    hi! @constant.builtin ctermfg=5
    hi! @string.regexp ctermfg=1
    hi! @string.escape ctermfg=6
    hi! @string.special.url ctermfg=4 cterm=underline
    hi! @string.special.symbol ctermfg=13
    hi! @type.builtin ctermfg=3
    hi! @property ctermfg=1
    hi! @function.builtin ctermfg=5
    hi! @constructor ctermfg=11
    hi! @keyword.function ctermfg=5
    hi! @keyword.return ctermfg=5
    hi! @keyword.export ctermfg=12
    hi! @punctuation.bracket ctermfg=15
    hi! @comment.error ctermbg=9 ctermfg=0
    hi! @comment.warning ctermbg=11 ctermfg=0
    hi! @comment.todo ctermbg=12 ctermfg=0
    hi! @comment.note ctermbg=14 ctermfg=0
    hi! @markup ctermfg=15
    hi! @markup.strong ctermfg=15 cterm=bold
    hi! @markup.italic ctermfg=15 cterm=italic
    hi! @markup.strikethrough ctermfg=15 cterm=strikethrough
    hi! @markup.heading ctermfg=4 cterm=bold
    hi! @markup.quote ctermfg=6
    hi! @markup.math ctermfg=4
    hi! @markup.link.url ctermfg=5 cterm=underline
    hi! @markup.raw ctermfg=14
    hi! @markup.list.checked ctermfg=2
    hi! @markup.list.unchecked ctermfg=7
    hi! @tag ctermfg=5
    hi! @tag.builtin ctermfg=6
    hi! @tag.attribute ctermfg=4
    hi! @tag.delimiter ctermfg=15
    
    hi! link @variable.parameter.builtin @variable.parameter
    hi! link @constant Constant
    hi! link @constant.macro Macro
    hi! link @module Structure
    hi! link @module.builtin Special
    hi! link @label Label
    hi! link @string String
    hi! link @string.special Special
    hi! link @character Character
    hi! link @character.special SpecialChar
    hi! link @boolean Boolean
    hi! link @number Number
    hi! link @number.float Float
    hi! link @type Type
    hi! link @type.definition Type
    hi! link @attribute Constant
    hi! link @attribute.builtin Constant
    hi! link @function Function
    hi! link @function.call Function
    hi! link @function.method Function
    hi! link @function.method.call Function
    hi! link @operator Operator
    hi! link @keyword Keyword
    hi! link @keyword.coroutine Keyword
    hi! link @keyword.operator Operator
    hi! link @keyword.import Include
    hi! link @keyword.type Keyword
    hi! link @keyword.modifier Keyword
    hi! link @keyword.repeat Repeat
    hi! link @keyword.debug Exception
    hi! link @keyword.exception Exception
    hi! link @keyword.conditional Conditional
    hi! link @keyword.conditional.ternary Operator
    hi! link @keyword.directive PreProc
    hi! link @keyword.directive.define Define
    hi! link @punctuation.delimiter Delimiter
    hi! link @punctuation.special Special
    hi! link @comment Comment
    hi! link @comment.documentation Comment
    hi! link @markup.underline underline
    hi! link @markup.link Tag
    hi! link @markup.link.label Label
    hi! link @markup.list Special
    hi! link @diff.plus diffAdded
    hi! link @diff.minus diffRemoved
    hi! link @diff.delta diffChanged
endif
