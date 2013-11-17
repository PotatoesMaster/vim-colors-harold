" Vim color file
" Name:       harold.vim
" Maintainer: Emanuel Guével
" Version:    0.1
" Notes:      based on Fabio Cevasco's herald.vim 0.2.2
"             <http://h3rald.com/herald-vim-color-scheme/>

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "harold"

set background=dark

" Set some syntax-related variables
let ruby_operators = 1

if has("gui_running")

  " -> Text; Miscellaneous
  hi Normal         guibg=#000000 guifg=#D0D0D0 gui=none
  hi SpecialKey     guibg=#000000 guifg=#E783E9 gui=none
  hi VertSplit      guibg=#000000 guifg=#FFEE68 gui=none
  hi SignColumn     guibg=#000000 guifg=#BF81FA gui=none
  hi NonText        guibg=#000000 guifg=#FC6984 gui=none
  hi Directory      guibg=#000000 guifg=#FFEE68 gui=none
  hi Title          guibg=#000000 guifg=#6DF584 gui=bold

  " -> Cursor
  hi Cursor         guibg=#FFEE68 guifg=#1F1F1F gui=none
  hi CursorIM       guibg=#FFEE68 guifg=#1F1F1F gui=none
  hi CursorColumn   guibg=#1F1F1F               gui=none
  hi CursorLine     guibg=#1F1F1F               gui=none

  " -> Folding
  hi FoldColumn     guibg=#000000 guifg=#003DAD gui=none
  hi Folded         guibg=#001336 guifg=#003DAD gui=none

  " -> Line info
  hi LineNr         guibg=#000000 guifg=#696567 gui=none
  hi StatusLine     guibg=#000000 guifg=#696567 gui=none
  hi StatusLineNC   guibg=#25365a guifg=#696567 gui=none

  " -> Messages
  hi ErrorMsg       guibg=#A32024 guifg=#D0D0D0 gui=none
  hi Question       guibg=#1F1F1F guifg=#FFA500 gui=none
  hi WarningMsg     guibg=#FFA500 guifg=#000000 gui=none
  hi MoreMsg        guibg=#1F1F1F guifg=#FFA500 gui=none
  hi ModeMsg        guibg=#1F1F1F guifg=#FFA500 gui=none

  " -> Search
  hi Search         guibg=#87FF5F guifg=#080808 gui=none
  hi IncSearch      guibg=#D7D700 guifg=#080808 gui=bold

  " -> Diff
  hi DiffAdd        guibg=#192f0b               gui=none
  hi DiffChange     guibg=#22222F               gui=none
  hi DiffDelete     guibg=#5F0000 guifg=#D0D0D0 gui=none
  hi DiffText       guibg=#87AFD7 guifg=#1C1C1C gui=none

  " -> Menu
  hi Pmenu          guibg=#080808 guifg=#6C6C6C gui=none
  hi PmenuSel       guibg=#87FF5F guifg=#080808 gui=none
  hi PmenuSbar      guibg=#FF0808               gui=none
  hi PmenuThumb     guibg=#303030               gui=none

  " -> Tabs
  hi TabLine        guibg=#141414 guifg=#696567 gui=none
  hi TabLineFill    guibg=#000000               gui=none
  hi TabLineSel     guibg=#1F1F1F guifg=#D0D0D0 gui=none
  "
  " -> Visual Mode
  hi Visual         guibg=#303030 guifg=#87FF5F gui=none
  hi VisualNOS                    guifg=#9E9E9E gui=none

  " -> Code
  hi Comment                      guifg=#696567 gui=none
  hi Constant                     guifg=#6DF584 gui=none
  hi String                       guifg=#FFB539 gui=none
  hi Error                        guifg=#FC4234 gui=none
  hi Identifier                   guifg=#70BDF1 gui=none
  hi Function                     guifg=#90CBF1 gui=none
  hi Ignore                       guifg=#1F1F1F gui=none
  hi MatchParen     guibg=#FFA500 guifg=#1F1F1F gui=none
  hi PreProc                      guifg=#BF81FA gui=none
  hi Special                      guifg=#FFEE68 gui=none
  hi Todo                         guifg=#FC4234 gui=bold
  hi Underlined                   guifg=#FC4234 gui=underline
  hi Statement                    guifg=#E783E9 gui=none
  hi Operator                     guifg=#FC6984 gui=none
  hi Delimiter                    guifg=#FC6984 gui=none
  hi Type                         guifg=#FFEE68 gui=none
  hi Exception                    guifg=#FC4234 gui=none

  " -> HTML-specific
  hi htmlBold                     guifg=#D0D0D0 gui=bold
  hi htmlBoldItalic               guifg=#D0D0D0 gui=bold,italic
  hi htmlBoldUnderline            guifg=#D0D0D0 gui=bold,underline
  hi htmlBoldUnderlineItalic      guifg=#D0D0D0 gui=bold,underline,italic
  hi htmlItalic                   guifg=#D0D0D0 gui=italic
  hi htmlUnderline                guifg=#D0D0D0 gui=underline
  hi htmlUnderlineItalic          guifg=#D0D0D0 gui=underline,italic

  " Spellcheck formatting
  if has("spell")
    hi SpellBad     guisp=#FC4234 gui=undercurl
    hi SpellCap     guisp=#70BDF1 gui=undercurl
    hi SpellLocal   guisp=#FFEE68 gui=undercurl
    hi SpellRare    guisp=#6DF584 gui=undercurl
  endif

  " -> Django
  hi djangoTagBlock  guifg=#0087FF gui=bold
  hi djangoVarBlock  guifg=#AFD7FF gui=bold
  hi djangoStatement guifg=#FF5FAF gui=bold
  hi djangoFilter    guifg=#FFFF5F gui=bold
  hi djangoArgument  guifg=#FFFFFF gui=bold

elseif &t_Co == 256

  " -> Text; Miscellaneous
  hi Normal         ctermbg=none ctermfg=252  cterm=none
  hi SpecialKey     ctermbg=none ctermfg=118  cterm=none
  hi VertSplit      ctermbg=none ctermfg=227  cterm=none
  hi SignColumn     ctermbg=none ctermfg=141  cterm=none
  hi NonText        ctermbg=none ctermfg=204  cterm=none
  hi Directory      ctermbg=none ctermfg=227  cterm=none
  hi Title          ctermbg=none ctermfg=84   cterm=bold

  " -> Cursor
  hi Cursor         ctermbg=227  ctermfg=234  cterm=none
  hi CursorIM       ctermbg=227  ctermfg=234  cterm=none
  hi CursorColumn   ctermbg=234               cterm=none
  hi CursorLine     ctermbg=234               cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=none ctermfg=25   cterm=none
  hi Folded         ctermbg=none ctermfg=25   cterm=none

  " -> Line info
  hi LineNr         ctermbg=none ctermfg=247  cterm=none
  hi StatusLine     ctermbg=232  ctermfg=119  cterm=none
  hi StatusLineNC   ctermbg=232  ctermfg=241  cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=124  ctermfg=252  cterm=none
  hi Question       ctermbg=none ctermfg=214  cterm=none
  hi WarningMsg     ctermbg=214  ctermfg=0    cterm=none
  hi MoreMsg        ctermbg=none ctermfg=214  cterm=none
  hi ModeMsg        ctermbg=none ctermfg=214  cterm=none

  " -> Search
  hi Search         ctermbg=119  ctermfg=232  cterm=none
  hi IncSearch      ctermbg=184  ctermfg=232  cterm=bold

  " -> Diff
  hi DiffAdd        ctermbg=233  ctermfg=none cterm=none
  hi DiffChange     ctermbg=234  ctermfg=none cterm=none
  hi DiffDelete     ctermbg=52   ctermfg=252  cterm=none
  hi DiffText       ctermbg=110  ctermfg=234  cterm=none

  " -> Menu
  hi Pmenu          ctermbg=232  ctermfg=242  cterm=none
  hi PmenuSel       ctermbg=119  ctermfg=232  cterm=none
  hi PmenuSbar      ctermbg=232               cterm=none
  hi PmenuThumb     ctermbg=236               cterm=none

  " -> Tabs
  hi TabLine        ctermbg=233  ctermfg=234  cterm=none
  hi TabLineFill    ctermbg=234               cterm=none
  hi TabLineSel     ctermbg=none ctermfg=252  cterm=bold
  "
  " -> Visual Mode
  hi Visual         ctermbg=236  ctermfg=119  cterm=none
  hi VisualNOS      ctermbg=none ctermfg=247  cterm=none

  " -> Code
  hi Comment        ctermbg=none ctermfg=244  cterm=none
  hi Constant       ctermbg=none ctermfg=83   cterm=none
  hi String         ctermbg=none ctermfg=215  cterm=none
  hi Error          ctermbg=none ctermfg=203  cterm=none
  hi Identifier     ctermbg=none ctermfg=75   cterm=none
  hi Function       ctermbg=none ctermfg=117  cterm=none
  hi Ignore         ctermbg=none ctermfg=234  cterm=none
  hi MatchParen     ctermbg=203  ctermfg=234  cterm=none
  hi PreProc        ctermbg=none ctermfg=141  cterm=none
  hi Special        ctermbg=none ctermfg=227  cterm=none
  hi Todo           ctermbg=none ctermfg=203  cterm=bold
  hi Underlined     ctermbg=none ctermfg=203  cterm=underline
  hi Statement      ctermbg=none ctermfg=176  cterm=none
  hi Operator       ctermbg=none ctermfg=204  cterm=none
  hi Delimiter      ctermbg=none ctermfg=204  cterm=none
  hi Type           ctermbg=none ctermfg=227  cterm=none
  hi Exception      ctermbg=none ctermfg=203  cterm=none

  " -> HTML-specific
  hi htmlBold                 ctermbg=none ctermfg=252  cterm=bold
  hi htmlBoldItalic           ctermbg=none ctermfg=252  cterm=bold,italic
  hi htmlBoldUnderline        ctermbg=none ctermfg=252  cterm=bold,underline
  hi htmlBoldUnderlineItalic  ctermbg=none ctermfg=252  cterm=bold,underline,italic
  hi htmlItalic               ctermbg=none ctermfg=252  cterm=italic
  hi htmlUnderline            ctermbg=none ctermfg=252  cterm=underline
  hi htmlUnderlineItalic      ctermbg=none ctermfg=252  cterm=underline,italic

  " Spellcheck formatting
  if has("spell")
    hi SpellBad     ctermbg=234  ctermfg=203  cterm=underline
    hi SpellCap     ctermbg=234  ctermfg=84   cterm=none
    hi SpellLocal   ctermbg=234  ctermfg=75   cterm=none
    hi SpellRare    ctermbg=234  ctermfg=227  cterm=none
  endif

  " -> Django
  hi djangoTagBlock  ctermfg=033 cterm=bold
  hi djangoVarBlock  ctermfg=153 cterm=bold
  hi djangoStatement ctermfg=205 cterm=bold
  hi djangoFilter    ctermfg=227 cterm=bold
  hi djangoArgument  ctermfg=231 cterm=bold

elseif &t_Co >= 16

  " -> Text; Miscellaneous
  hi Normal         ctermbg=none ctermfg=15   cterm=none
  hi SpecialKey     ctermbg=none ctermfg=5    cterm=none
  hi VertSplit      ctermbg=none ctermfg=14   cterm=none
  hi SignColumn     ctermbg=none ctermfg=5    cterm=none
  hi NonText        ctermbg=none ctermfg=4    cterm=none
  hi Directory      ctermbg=none ctermfg=14   cterm=none
  hi Title          ctermbg=none ctermfg=10   cterm=bold

  " -> Cursor
  hi Cursor         ctermbg=14   ctermfg=8    cterm=none
  hi CursorIM       ctermbg=14   ctermfg=8    cterm=none
  hi CursorColumn   ctermbg=none              cterm=none
  hi CursorLine     ctermbg=none              cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=none ctermfg=1    cterm=none
  hi Folded         ctermbg=none ctermfg=1    cterm=none

  " -> Line info
  hi LineNr         ctermbg=0    ctermfg=7    cterm=none
  hi StatusLine     ctermbg=0    ctermfg=2    cterm=none
  hi StatusLineNC   ctermbg=0    ctermfg=7    cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4    ctermfg=7    cterm=none
  hi Question       ctermbg=none ctermfg=14   cterm=none
  hi WarningMsg     ctermbg=14   ctermfg=0    cterm=none
  hi MoreMsg        ctermbg=none ctermfg=14   cterm=none
  hi ModeMsg        ctermbg=none ctermfg=14   cterm=none

  " -> Search
  hi Search         ctermbg=10   ctermfg=0    cterm=none
  hi IncSearch      ctermbg=3    ctermfg=0    cterm=bold

  " -> Diff
  hi DiffAdd        ctermbg=none ctermfg=10   cterm=none
  hi DiffChange     ctermbg=8    ctermfg=none cterm=none
  hi DiffDelete     ctermbg=9    ctermfg=0    cterm=none
  hi DiffText       ctermbg=6    ctermfg=0    cterm=none

  " -> Menu
  hi Pmenu          ctermbg=0    ctermfg=7    cterm=none
  hi PmenuSel       ctermbg=2    ctermfg=0    cterm=none
  hi PmenuSbar      ctermbg=0                 cterm=none
  hi PmenuThumb     ctermbg=7                 cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7    ctermfg=8    cterm=none
  hi TabLineFill    ctermbg=none              cterm=none
  hi TabLineSel     ctermbg=8    ctermfg=7    cterm=bold
  "
  " -> Visual Mode
  hi Visual         ctermbg=0    ctermfg=10   cterm=none
  hi VisualNOS      ctermbg=0    ctermfg=7    cterm=none

  " -> Code
  hi Comment        ctermbg=none ctermfg=7    cterm=none
  hi Constant       ctermbg=none ctermfg=10   cterm=none
  hi String         ctermbg=none ctermfg=6    cterm=none
  hi Error          ctermbg=none ctermfg=4    cterm=none
  hi Identifier     ctermbg=none ctermfg=11   cterm=none
  hi Function       ctermbg=none ctermfg=11   cterm=none
  hi Ignore         ctermbg=none ctermfg=8    cterm=none
  hi MatchParen     ctermbg=14   ctermfg=8    cterm=none
  hi PreProc        ctermbg=none ctermfg=5    cterm=none
  hi Special        ctermbg=none ctermfg=14   cterm=none
  hi Todo           ctermbg=none ctermfg=12   cterm=bold
  hi Underlined     ctermbg=none ctermfg=12   cterm=underline
  hi Statement      ctermbg=none ctermfg=13   cterm=none
  hi Operator       ctermbg=none ctermfg=4    cterm=none
  hi Delimiter      ctermbg=none ctermfg=4    cterm=none
  hi Type           ctermbg=none ctermfg=14   cterm=none
  hi Exception      ctermbg=none ctermfg=12   cterm=none

  " -> HTML-specific
  hi htmlBold                 ctermbg=none ctermfg=7    cterm=bold
  hi htmlBoldItalic           ctermbg=none ctermfg=7    cterm=bold,italic
  hi htmlBoldUnderline        ctermbg=none ctermfg=7    cterm=bold,underline
  hi htmlBoldUnderlineItalic  ctermbg=none ctermfg=7    cterm=bold,underline,italic
  hi htmlItalic               ctermbg=none ctermfg=7    cterm=italic
  hi htmlUnderline            ctermbg=none ctermfg=7    cterm=underline
  hi htmlUnderlineItalic      ctermbg=none ctermfg=7    cterm=underline,italic

  " Spellcheck formatting
  if has("spell")
    hi SpellBad     ctermbg=8    ctermfg=4    cterm=underline
    hi SpellCap     ctermbg=8    ctermfg=10   cterm=none
    hi SpellLocal   ctermbg=8    ctermfg=11   cterm=none
    hi SpellRare    ctermbg=8    ctermfg=14   cterm=none
  endif

  " -> Django
  hi djangoTagBlock  ctermfg=4    cterm=bold
  hi djangoVarBlock  ctermfg=6    cterm=bold
  hi djangoStatement ctermfg=5    cterm=bold
  hi djangoFilter    ctermfg=3    cterm=bold
  hi djangoArgument  ctermfg=7    cterm=bold

elseif &t_Co >= 8

  " -> Text; Miscellaneous
  hi Normal         ctermbg=none ctermfg=7    cterm=none
  hi SpecialKey     ctermbg=none ctermfg=5    cterm=none
  hi VertSplit      ctermbg=none ctermfg=6    cterm=none
  hi SignColumn     ctermbg=none ctermfg=5    cterm=none
  hi NonText        ctermbg=none ctermfg=4    cterm=none
  hi Directory      ctermbg=none ctermfg=6    cterm=none
  hi Title          ctermbg=none ctermfg=2    cterm=bold

  " -> Cursor
  hi Cursor         ctermbg=6    ctermfg=8    cterm=none
  hi CursorIM       ctermbg=6    ctermfg=8    cterm=none
  hi CursorColumn   ctermbg=none              cterm=none
  hi CursorLine     ctermbg=none              cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=none ctermfg=1    cterm=none
  hi Folded         ctermbg=none ctermfg=1    cterm=none

  " -> Line info
  hi LineNr         ctermbg=0    ctermfg=0    cterm=bold
  hi StatusLine     ctermbg=0    ctermfg=2    cterm=none
  hi StatusLineNC   ctermbg=0    ctermfg=7    cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4    ctermfg=7    cterm=none
  hi Question       ctermbg=none ctermfg=6    cterm=none
  hi WarningMsg     ctermbg=6    ctermfg=0    cterm=none
  hi MoreMsg        ctermbg=none ctermfg=6    cterm=none
  hi ModeMsg        ctermbg=none ctermfg=6    cterm=none

  " -> Search
  hi Search         ctermbg=2    ctermfg=0    cterm=none
  hi IncSearch      ctermbg=3    ctermfg=0    cterm=bold

  " -> Diff
  hi DiffAdd        ctermbg=none ctermfg=2    cterm=none
  hi DiffChange     ctermbg=0    ctermfg=none cterm=none
  hi DiffDelete     ctermbg=1    ctermfg=0    cterm=none
  hi DiffText       ctermbg=6    ctermfg=0    cterm=underline

  " -> Menu
  hi Pmenu          ctermbg=0    ctermfg=7    cterm=none
  hi PmenuSel       ctermbg=2    ctermfg=0    cterm=none
  hi PmenuSbar      ctermbg=0                 cterm=none
  hi PmenuThumb     ctermbg=7                 cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7    ctermfg=8    cterm=none
  hi TabLineFill    ctermbg=none              cterm=none
  hi TabLineSel     ctermbg=none ctermfg=7    cterm=bold
  "
  " -> Visual Mode
  hi Visual         ctermbg=0    ctermfg=2    cterm=none
  hi VisualNOS      ctermbg=0    ctermfg=7    cterm=none

  " -> Code
  hi Comment        ctermbg=none ctermfg=7    cterm=none
  hi Constant       ctermbg=none ctermfg=2    cterm=none
  hi String         ctermbg=none ctermfg=6    cterm=none
  hi Error          ctermbg=none ctermfg=4    cterm=none
  hi Identifier     ctermbg=none ctermfg=3    cterm=none
  hi Function       ctermbg=none ctermfg=3    cterm=none
  hi Ignore         ctermbg=none ctermfg=8    cterm=none
  hi MatchParen     ctermbg=none ctermfg=8    cterm=none
  hi PreProc        ctermbg=none ctermfg=5    cterm=none
  hi Special        ctermbg=none ctermfg=6    cterm=none
  hi Todo           ctermbg=none ctermfg=4    cterm=bold
  hi Underlined     ctermbg=none ctermfg=4    cterm=underline
  hi Statement      ctermbg=none ctermfg=5    cterm=none
  hi Operator       ctermbg=none ctermfg=4    cterm=none
  hi Delimiter      ctermbg=none ctermfg=4    cterm=none
  hi Type           ctermbg=none ctermfg=6    cterm=none
  hi Exception      ctermbg=none ctermfg=4    cterm=none

  " -> HTML-specific
  hi htmlBold                 ctermbg=none ctermfg=7    cterm=bold
  hi htmlBoldItalic           ctermbg=none ctermfg=7    cterm=bold,italic
  hi htmlBoldUnderline        ctermbg=none ctermfg=7    cterm=bold,underline
  hi htmlBoldUnderlineItalic  ctermbg=none ctermfg=7    cterm=bold,underline,italic
  hi htmlItalic               ctermbg=none ctermfg=7    cterm=italic
  hi htmlUnderline            ctermbg=none ctermfg=7    cterm=underline
  hi htmlUnderlineItalic      ctermbg=none ctermfg=7    cterm=underline,italic

  " Spellcheck formatting
  if has("spell")
    hi SpellBad     ctermbg=8    ctermfg=4    cterm=underline
    hi SpellCap     ctermbg=8    ctermfg=2    cterm=none
    hi SpellLocal   ctermbg=8    ctermfg=3    cterm=none
    hi SpellRare    ctermbg=8    ctermfg=6    cterm=none
  endif

  " -> Django
  hi djangoTagBlock  ctermfg=4    cterm=bold
  hi djangoVarBlock  ctermfg=6    cterm=bold
  hi djangoStatement ctermfg=5    cterm=bold
  hi djangoFilter    ctermfg=3    cterm=bold
  hi djangoArgument  ctermfg=7    cterm=bold

endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline
