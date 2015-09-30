" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai-inverted"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#517e00
hi Character       guifg=#19248b
hi Number          guifg=#517e00
hi String          guifg=#19248b
hi Conditional     guifg=#06d98d               gui=bold
hi Constant        guifg=#517e00               gui=bold
hi Cursor          guifg=#ffffff guibg=#07070f
hi iCursor         guifg=#ffffff guibg=#07070f
hi Debug           guifg=#435c5c               gui=bold
hi Define          guifg=#992610
hi Delimiter       guifg=#707070
hi DiffAdd                       guibg=#eccab5
hi DiffChange      guifg=#767f82 guibg=#b3b8ba
hi DiffDelete      guifg=#69ffaf guibg=#e1ffef
hi DiffText                      guibg=#b3b8ba gui=italic,bold

hi Directory       guifg=#591dd1               gui=bold
hi Error           guifg=#19248b guibg=#e1ffef
hi ErrorMsg        guifg=#06d98d guibg=#dcdad9 gui=bold
hi Exception       guifg=#591dd1               gui=bold
hi Float           guifg=#517e00
hi FoldColumn      guifg=#b9aba8 guibg=#ffffff
hi Folded          guifg=#b9aba8 guibg=#ffffff
hi Function        guifg=#591dd1
hi Identifier      guifg=#0268e0
hi Ignore          guifg=#7f7f7f guibg=bg
hi IncSearch       guifg=#3b4176 guibg=#ffffff

hi Keyword         guifg=#06d98d               gui=bold
hi Label           guifg=#19248b               gui=none
hi Macro           guifg=#3b4176               gui=italic
hi SpecialKey      guifg=#992610               gui=italic

hi MatchParen      guifg=#ffffff guibg=#0268e0 gui=bold
hi ModeMsg         guifg=#19248b
hi MoreMsg         guifg=#19248b
hi Operator        guifg=#06d98d

" complete menu
hi Pmenu           guifg=#992610 guibg=#ffffff
hi PmenuSel                      guibg=#7f7f7f
hi PmenuSbar                     guibg=#f7f7f7
hi PmenuThumb      guifg=#992610

hi PreCondit       guifg=#591dd1               gui=bold
hi PreProc         guifg=#591dd1
hi Question        guifg=#992610
hi Repeat          guifg=#06d98d               gui=bold
hi Search          guifg=#ffffff guibg=#00186d
" marks
hi SignColumn      guifg=#591dd1 guibg=#dcdad9
hi SpecialChar     guifg=#06d98d               gui=bold
hi SpecialComment  guifg=#81716e               gui=bold
hi Special         guifg=#992610 guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#00ffff gui=undercurl
    hi SpellCap    guisp=#8f8f0f gui=undercurl
    hi SpellLocal  guisp=#8f0f0f gui=undercurl
    hi SpellRare   guisp=#000000 gui=undercurl
endif
hi Statement       guifg=#06d98d               gui=bold
hi StatusLine      guifg=#baacab guibg=fg
hi StatusLineNC    guifg=#7f7f7f guibg=#f7f7f7
hi StorageClass    guifg=#0268e0               gui=italic
hi Structure       guifg=#992610
hi Tag             guifg=#06d98d               gui=italic
hi Title           guifg=#10a6c6
hi Todo            guifg=#000000 guibg=bg      gui=bold

hi Typedef         guifg=#992610
hi Type            guifg=#992610               gui=none
hi Underlined      guifg=#7f7f7f               gui=underline

hi VertSplit       guifg=#7f7f7f guibg=#f7f7f7 gui=bold
hi VisualNOS                     guibg=#bfc2c2
hi Visual                        guibg=#bfc2c2
hi WarningMsg      guifg=#000000 guibg=#cccccc gui=bold
hi WildMenu        guifg=#992610 guibg=#ffffff

hi TabLineFill     guifg=#e4e2e1 guibg=#e4e2e1
hi TabLine         guibg=#e4e2e1 guifg=#7f7f7f gui=none

if s:molokai_original == 1
   hi Normal          guifg=#07070d guibg=#d8d7dd
   hi Comment         guifg=#8a8ea1
   hi CursorLine                    guibg=#c1c2cd
   hi CursorLineNr    guifg=#0268e0               gui=none
   hi CursorColumn                  guibg=#c1c2cd
   hi ColorColumn                   guibg=#c4c5cd
   hi LineNr          guifg=#434343 guibg=#c4c5cd
   hi NonText         guifg=#8a8ea1
   hi SpecialKey      guifg=#8a8ea1
else
   hi Normal          guifg=#07070d guibg=#e4e2e1
   hi Comment         guifg=#81716e
   hi CursorLine                    guibg=#d6c8c6
   hi CursorLineNr    guifg=#0268e0               gui=none
   hi CursorColumn                  guibg=#d6c8c6
   hi ColorColumn                   guibg=#dcdad9
   hi LineNr          guifg=#b9aba8 guibg=#dcdad9
   hi NonText         guifg=#b9aba8
   hi SpecialKey      guifg=#b9aba8
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=254
      hi CursorLine               ctermbg=253   cterm=none
      hi CursorLineNr ctermfg=33               cterm=none
   else
      hi Normal       ctermfg=236 ctermbg=255
      hi CursorLine               ctermbg=254   cterm=none
      hi CursorLineNr ctermfg=33               cterm=none
   endif
   hi Boolean         ctermfg=70
   hi Character       ctermfg=60
   hi Number          ctermfg=70
   hi String          ctermfg=60
   hi Conditional     ctermfg=49               cterm=bold
   hi Constant        ctermfg=70               cterm=bold
   hi Cursor          ctermfg=15  ctermbg=235
   hi Debug           ctermfg=0               cterm=bold
   hi Define          ctermfg=124
   hi Delimiter       ctermfg=247

   hi DiffAdd                     ctermbg=216
   hi DiffChange      ctermfg=239 ctermbg=249
   hi DiffDelete      ctermfg=48 ctermbg=157
   hi DiffText                    ctermbg=243 cterm=bold

   hi Directory       ctermfg=93               cterm=bold
   hi Error           ctermfg=22 ctermbg=121
   hi ErrorMsg        ctermfg=47 ctermbg=15    cterm=bold
   hi Exception       ctermfg=93               cterm=bold
   hi Float           ctermfg=70
   hi FoldColumn      ctermfg=137  ctermbg=15
   hi Folded          ctermfg=137  ctermbg=15
   hi Function        ctermfg=93
   hi Identifier      ctermfg=33               cterm=none
   hi Ignore          ctermfg=8 ctermbg=15
   hi IncSearch       ctermfg=17 ctermbg=15

   hi keyword         ctermfg=49               cterm=bold
   hi Label           ctermfg=17               cterm=none
   hi Macro           ctermfg=17
   hi SpecialKey      ctermfg=124

   hi MatchParen      ctermfg=255  ctermbg=33 cterm=bold
   hi ModeMsg         ctermfg=17
   hi MoreMsg         ctermfg=17
   hi Operator        ctermfg=49

   " complete menu
   hi Pmenu           ctermfg=124  ctermbg=15
   hi PmenuSel        ctermfg=233 ctermbg=246
   hi PmenuSbar                   ctermbg=15
   hi PmenuThumb      ctermfg=124

   hi PreCondit       ctermfg=93               cterm=bold
   hi PreProc         ctermfg=93
   hi Question        ctermfg=124
   hi Repeat          ctermfg=49               cterm=bold
   hi Search          ctermfg=15   ctermbg=4   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=93 ctermbg=253
   hi SpecialChar     ctermfg=49               cterm=bold
   hi SpecialComment  ctermfg=243               cterm=bold
   hi Special         ctermfg=124
   if has("spell")
       hi SpellBad                ctermbg=159
       hi SpellCap                ctermbg=229
       hi SpellLocal              ctermbg=229
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=49               cterm=bold
   hi StatusLine      ctermfg=250 ctermbg=235
   hi StatusLineNC    ctermfg=8 ctermbg=15
   hi StorageClass    ctermfg=33
   hi Structure       ctermfg=124
   hi Tag             ctermfg=49
   hi Title           ctermfg=39
   hi Todo            ctermfg=0 ctermbg=15   cterm=bold

   hi Typedef         ctermfg=124
   hi Type            ctermfg=124                cterm=none
   hi Underlined      ctermfg=8               cterm=underline

   hi VertSplit       ctermfg=8 ctermbg=15   cterm=bold
   hi VisualNOS                   ctermbg=250
   hi Visual                      ctermbg=253
   hi WarningMsg      ctermfg=0 ctermbg=250   cterm=bold
   hi WildMenu        ctermfg=124  ctermbg=15

   hi Comment         ctermfg=247
   hi CursorColumn                ctermbg=252
   hi ColorColumn                 ctermbg=252
   hi LineNr          ctermfg=238 ctermbg=252
   hi NonText         ctermfg=247

   hi SpecialKey      ctermfg=247

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=236 ctermbg=254
       hi CursorLine               ctermbg=252   cterm=none
       hi CursorLineNr ctermfg=33               cterm=none

       hi Boolean         ctermfg=64
       hi Character       ctermfg=4
       hi Number          ctermfg=64
       hi String          ctermfg=4
       hi Conditional     ctermfg=49               cterm=bold
       hi Constant        ctermfg=64               cterm=bold

       hi DiffDelete      ctermfg=85 ctermbg=255

       hi Directory       ctermfg=57               cterm=bold
       hi Error           ctermfg=4 ctermbg=255
       hi Exception       ctermfg=57               cterm=bold
       hi Float           ctermfg=64
       hi Function        ctermfg=57
       hi Identifier      ctermfg=33

       hi Keyword         ctermfg=49               cterm=bold
       hi Operator        ctermfg=49
       hi PreCondit       ctermfg=57               cterm=bold
       hi PreProc         ctermfg=57
       hi Repeat          ctermfg=49               cterm=bold

       hi Statement       ctermfg=49               cterm=bold
       hi Tag             ctermfg=49
       hi Title           ctermfg=37
       hi Visual                      ctermbg=250

       hi Comment         ctermfg=8
       hi LineNr          ctermfg=249 ctermbg=253
       hi NonText         ctermfg=249
       hi SpecialKey      ctermfg=249
   endif
end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
