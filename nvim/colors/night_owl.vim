hi LineNr                      guifg=#637777    guibg=NONE       gui=NONE
hi CursorLine                  guifg=NONE       guibg=NONE       gui=NONE
hi CursorLineNr                guifg=#d5dcdc    guibg=#010e1a    gui=NONE
hi ColorColumn                 guibg=#222222    gui=NONE
hi Directory                   guifg=#82aaff    gui=NONE
hi DiffAdd                     guifg=#011627    guibg=#addb67    gui=NONE
hi DiffChange                  guifg=#011627    guibg=#ecc48d    gui=NONE
hi DiffDelete                  guifg=#011627    guibg=#ff5874    gui=NONE
hi DiffText                    guifg=#011627    guibg=#addb67    gui=NONE
hi diffAdded                   guifg=#addb67    gui=NONE
hi diffRemoved                 guifg=#ff5874    gui=NONE
hi VertSplit                   guifg=#777777    gui=NONE
hi Folded                      guifg=#777777    guibg=#011627    gui=NONE
hi FoldColumn                  guifg=#333333    guibg=#011627    gui=NONE
hi SignColumn                  guifg=NONE       guibg=#011627    gui=NONE
hi IncSearch                   guifg=#eeeeee    guibg=#ecc48d    gui=NONE
hi PMenu                       guibg=#2d2c5d    gui=NONE
hi PMenuSel                    guibg=#c792ea    gui=NONE
hi Search                      guifg=#011627    guibg=#ecc48d    gui=NONE
hi SpecialKey                  guifg=#ecc48d    gui=NONE
hi StatusLine                  guifg=#eeeeee    guibg=#112630    gui=NONE
hi StatusLineNC                guifg=#777777    guibg=#112630    gui=NONE
hi Title                       guifg=#d6deeb    gui=bold
hi Visual                      guifg=NONE       guibg=#234d70    gui=NONE
hi Comment                     guifg=#637777    gui=italic
hi Constant                    guifg=#addb67    gui=NONE 
hi String                      guifg=#ecc48d    gui=NONE
hi Identifier                  guifg=#7fdbca    gui=NONE
hi Statement                   guifg=#7fdbca    gui=NONE
hi Operator                    guifg=#c792ea    gui=NONE 
hi Exception                   guifg=#addb67    gui=NONE
hi PreProc                     guifg=#c792ea    gui=NONE
hi Type                        guifg=#addb67    gui=NONE
hi Todo                        guifg=#777777    guibg=#ecc48d    gui=NONE
hi StorageClass                guifg=#c792ea    gui=NONE
"" HTML
hi htmlTag                     guifg=#7fdbca    guibg=NONE       gui=NONE
hi htmlH1                      guifg=#7fdbca    gui=bold
hi htmlH4                      guifg=#7fdbca    gui=NONE
hi htmlBold                    guifg=#7fdbca    guibg=#011627    gui=bold
hi link    htmlEndTag    htmlTag
hi link    htmlH2        htmlH1
hi link    htmlH3        htmlH1
hi link    htmlH5        htmlH4
"" JavaScript   
hi jsStorageClass              guifg=#82aaff    gui=NONE
hi jsOperator                  guifg=#c792ea    gui=NONE
hi jsArrowFunction             guifg=#c792ea    gui=NONE
hi jsString                    guifg=#ecc48d    gui=NONE
hi jsComment                   guifg=#637777    gui=italic
hi jsFuncCall                  guifg=#82aaff    gui=NONE
hi jsNumber                    guifg=#f78c6c    gui=NONE
hi jsSpecial                   guifg=#f78c6c    gui=NONE
hi jsObjectProp                guifg=#7fdbca    gui=NONE
hi jsOperatorKeyword           guifg=#7fdbca    gui=NONE
hi jsBooleanFalse              guifg=#ff5874    gui=NONE
hi jsBooleanTrue               guifg=#ff5874    gui=NONE
hi jsRegexpString              guifg=#5ca7e4    gui=NONE
hi jsConditional               guifg=#c792ea    gui=NONE
hi jsFunction                  guifg=#82aaff    gui=NONE
hi jsReturn                    guifg=#c792ea    gui=NONE 
hi jsFuncName                  guifg=#82aaff    gui=NONE 
hi jsClassDefinition           guifg=#ecc48d    gui=NONE
hi jsImport                    guifg=#c792ea    gui=italic
hi jsFrom                      guifg=#c792ea    gui=italic
hi jsModuleAs                  guifg=#c792ea    gui=italic
hi jsExport                    guifg=#7fdbca    gui=NONE
hi jsExportDefault             guifg=#7fdbca    gui=NONE
hi jsExtendsKeyword            guifg=#c792ea    gui=italic
hi javaScriptReserved          guifg=#82aaff    gui=NONE
hi javaScriptConditional       guifg=#c792ea    gui=NONE
hi javaScriptStringS           guifg=#ecc48d    gui=NONE
hi javaScriptBoolean           guifg=#ff5874    gui=NONE
hi javaScriptBraces            guifg=#d6deeb    gui=NONE
hi javaScriptLineComment       guifg=#637777    gui=italic
hi javaScriptSpecial           guifg=#f78c6c    gui=NONE
hi javaScriptFunction          guifg=#c792ea    gui=NONE
hi javaScriptStatement         guifg=#c792ea    gui=NONE
hi javaScriptException         guifg=#addb67    gui=NONE
hi javaScriptMessage           guifg=#addb67    gui=NONE
hi link    jsParensError    jsFuncParens
"" CSS/SCSS 
hi scssSelectorName            guifg=#addb67    gui=NONE
hi cssTagName                  guifg=#ff5874    gui=NONE 
hi cssClassName                guifg=#addb67    gui=italic
hi cssBraces                   guifg=#d6deeb    gui=NONE
hi cssPositioningProp          guifg=#7fdbca    gui=NONE
hi cssBoxProp                  guifg=#7fdbca    gui=NONE
hi cssDimensionProp            guifg=#7fdbca    gui=NONE
hi cssTransitionProp           guifg=#7fdbca    gui=NONE
hi cssTextProp                 guifg=#7fdbca    gui=NONE
hi cssFontProp                 guifg=#7fdbca    gui=NONE
hi cssBorderProp               guifg=#7fdbca    gui=NONE
hi cssBackgroundProp           guifg=#7fdbca    gui=NONE
hi cssUIProp                   guifg=#7fdbca    gui=NONE 
hi cssIEUIProp                 guifg=#ff5874    gui=NONE
hi scssFunctionName            guifg=#addb67    gui=NONE
hi cssPositioningAttr          guifg=#ff5874    gui=NONE
hi cssTableAttr                guifg=#ff5874    gui=NONE 
hi cssCommonAttr               guifg=#ff5874    gui=NONE
hi cssColorProp                guifg=#7fdbca    gui=NONE 
hi cssIncludeKeyword           guifg=#7fdbca    gui=NONE
hi cssKeyFrameSelector         guifg=#addb67    gui=NONE
hi cssPseudoClassId            guifg=#addb67    gui=italic
hi cssBorderAttr               guifg=#ff5874    gui=NONE 
hi cssValueLength              guifg=#f78c6c    gui=NONE
hi cssUnitDecorators           guifg=#fbec9f    gui=NONE
hi cssIdentifier               guifg=#f4d554    gui=italic
hi link    cssClassNameDot     cssClassName
"" MarkDown
hi markdownHeadingDelimiter    guifg=#637777    gui=NONE
hi markdownCodeDelimiter       guifg=#ecc48d    gui=NONE 
hi markdownCode                guifg=#aaaaaa    gui=NONE 
hi mkdCodeStart                guifg=#d6deeb    gui=NONE
hi mkdCodeEnd                  guifg=#d6deeb    gui=NONE
hi mkdLinkDef                  guifg=#7fdbca    gui=NONE
hi mkdCodeDelimiter            guifg=#637777    guibg=#011627    gui=NONE
hi shComment                   guifg=#637777    guibg=#011627    gui=italic 

