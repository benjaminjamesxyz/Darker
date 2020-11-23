local Darker = {
 bg = '#0c1012';
 fg ='#dbdbdb';
 black ='#000000';
 none = 'NONE';
}

function Darker.highlight(group, color)
 local style = color.style and 'gui=' .. color.style or 'gui=NONE'
 local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
 local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
 local sp = color.sp and 'guisp=' .. color.sp or ''
 vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
  ' ' .. bg..' '..sp)
end


function Darker.load_syntax()
 local syntax = {
  Normal = {fg = Darker.fg,bg=Darker.bg};
  Terminal = {fg = Darker.fg,bg=Darker.bg};
  SignColumn = {fg=Darker.fg,bg=Darker.bg};
  VertSplit = {fg=Darker.black,bg=Darker.bg};
  --IncSearch = {fg=Darker.bg1,bg=Darker.orange,style=Darker.none};
  --Search = {fg=Darker.bg,bg=Darker.green};
  --ColorColumn = {fg=Darker.none,bg=Darker.bg_highlight};
  --Conceal = {fg=Darker.grey,bg=Darker.none};
  --Cursor = {fg=Darker.none,bg=Darker.none,style='reverse'};
  --vCursor = {fg=Darker.none,bg=Darker.none,style='reverse'};
  --iCursor = {fg=Darker.none,bg=Darker.none,style='reverse'};
  --lCursor = {fg=Darker.none,bg=Darker.none,style='reverse'};
  --CursorIM = {fg=Darker.none,bg=Darker.none,style='reverse'};
  --CursorColumn = {fg=Darker.none,bg=Darker.bg_highlight};
  --CursorLine = {fg=Darker.none,bg=Darker.bg_highlight};
  --LineNr = {fg=Darker.base4};
  --CursorLineNr = {fg=Darker.blue};
  --DiffAdd = {fg=Darker.black,bg=Darker.green};
  --DiffChange = {fg=Darker.black,bg=Darker.yellow};
  --DiffDelete = {fg=Darker.black,bg=Darker.red};
  --DiffText = {fg=Darker.black,bg=Darker.fg};
  --Directory = {fg=Darker.bg1,bg=Darker.none};
  --ErrorMsg = {fg=Darker.red,bg=Darker.none,style='bold'};
  --WarningMsg = {fg=Darker.yellow,bg=Darker.none,style='bold'};
  --ModeMsg = {fg=Darker.fg,bg=Darker.none,style='bold'};
  --MatchParen = {fg=Darker.red,bg=Darker.none};
  --NonText = {fg=Darker.bg1};
  --Whitespace = {fg=Darker.base4};
  --SpecialKey = {fg=Darker.bg1};
  --Pmenu = {fg=Darker.fg,bg=Darker.bg_popup};
  --PmenuSel = {fg=Darker.base0,bg=Darker.blue};
  --PmenuSelBold = {fg=Darker.base0,g=Darker.blue};
  --PmenuSbar = {fg=Darker.none,bg=Darker.blue};
  --PmenuThumb = {fg=Darker.brown,bg=Darker.brown};
  --WildMenu = {fg=Darker.fg,bg=Darker.green};
  --Question = {fg=Darker.yellow};
  --NormalFloat = {fg=Darker.base8,bg=Darker.bg_highlight};
  --TabLineFill = {style=Darker.none};
  --TabLineSel = {bg=Darker.blue};
  --StatusLine = {fg=Darker.base8,bg=Darker.none,style=Darker.none};
  --StatusLineNC = {fg=Darker.grey,bg=Darker.none,style=Darker.none};
  --SpellBad = {fg=Darker.red,bg=Darker.none,style='undercurl'};
  --SpellCap = {fg=Darker.blue,bg=Darker.none,style='undercurl'};
  --SpellLocal = {fg=Darker.cyan,bg=Darker.none,style='undercurl'};
  --SpellRare = {fg=Darker.violet,bg=Darker.none,style = 'undercurl'};
  --Visual = {fg=Darker.black,bg=Darker.bg_visual};
  --VisualNOS = {fg=Darker.black,bg=Darker.bg_visual};
  --QuickFixLine = {fg=Darker.violet,style='bold'};
  --Debug = {fg=Darker.orange};
  --debugBreakpoint = {fg=Darker.bg,bg=Darker.red};

  --Boolean = {fg=Darker.orange};
  --Number = {fg=Darker.violet};
  --Float = {fg=Darker.violet};
  --PreProc = {fg=Darker.violet};
  --PreCondit = {fg=Darker.violet};
  --Include = {fg=Darker.violet};
  --Define = {fg=Darker.violet};
  --Conditional = {fg=Darker.violet};
  --Repeat = {fg=Darker.violet};
  --Keyword = {fg=Darker.red};
  --Typedef = {fg=Darker.red};
  --Exception = {fg=Darker.red};
  --Statement = {fg=Darker.red};
  --Error = {fg=Darker.red};
  --StorageClass = {fg=Darker.orange};
  --Tag = {fg=Darker.orange};
  --Label = {fg=Darker.orange};
  --Structure = {fg=Darker.orange};
  --Operator = {fg=Darker.magenta};
  --Title = {fg=Darker.orange,style='bold'};
  --Special = {fg=Darker.yellow};
  --SpecialChar = {fg=Darker.yellow};
  --Type = {fg=Darker.yellow};
  --Function = {fg=Darker.magenta,style='bold'};
  --String = {fg=Darker.green};
  --Character = {fg=Darker.green};
  --Constant = {fg=Darker.cyan};
  --Macro = {fg=Darker.cyan};
  --Identifier = {fg=Darker.blue};

  --Comment = {fg=Darker.base6};
  --SpecialComment = {fg=Darker.grey};
  --Todo = {fg=Darker.violet};
  --Delimiter = {fg=Darker.fg};
  --Ignore = {fg=Darker.grey};
  --Underlined = {fg=Darker.none,style='underline'};

  --TSFunction = {fg=Darker.yellow,style='bold'};
  --TSMethod = {fg=Darker.yellow,style='bold'};
  --TSKeywordFunction = {fg=Darker.blue};
  --TSProperty = {fg=Darker.cyan};
  --TSType = {fg=Darker.teal};
  --TSPunctBracket = {fg=Darker.bracket};

  --vimCommentTitle = {fg=Darker.grey,style='bold'};
  --vimLet = {fg=Darker.orange};
  --vimVar = {fg=Darker.cyan};
  --vimFunction = {fg=Darker.magenta,style='bold'};
  --vimIsCommand = {fg=Darker.fg};
  --vimCommand = {fg=Darker.blue};
  --vimNotFunc = {fg=Darker.violet,style='bold'};
  --vimUserFunc = {fg=Darker.yellow,style='bold'};
  --vimFuncName= {fg=Darker.yellow,style='bold'};

  --diffAdded = {fg = Darker.green};
  --diffRemoved = {fg =Darker.red};
  --diffChanged = {fg = Darker.blue};
  --diffOldFile = {fg = Darker.yellow};
  --diffNewFile = {fg = Darker.orange};
  --diffFile    = {fg = Darker.aqua};
  --diffLine    = {fg = Darker.grey};
  --diffIndexLine = {fg = Darker.violet};

  --gitcommitSummary = {fg = Darker.red};
  --gitcommitUntracked = {fg = Darker.grey};
  --gitcommitDiscarded = {fg = Darker.grey};
  --gitcommitSelected = { fg=Darker.grey};
  --gitcommitUnmerged = { fg=Darker.grey};
  --gitcommitOnBranch = { fg=Darker.grey};
  --gitcommitArrow  = {fg = Darker.grey};
  --gitcommitFile  = {fg = Darker.green};

  --VistaBracket = {fg=Darker.grey};
  --VistaChildrenNr = {fg=Darker.orange};
  --VistaKind = {fg=Darker.purpl};
  --VistaScope = {fg=Darker.red};
  --VistaScopeKind = {fg=Darker.blue};
  --VistaTag = {fg=Darker.green,style='bold'};
  --VistaPrefix = {fg=Darker.grey};
  --VistaColon = {fg=Darker.green};
  --VistaIcon = {fg=Darker.yellow};
  --VistaLineNr = {fg=Darker.fg};

  --GitGutterAdd = {fg=Darker.green};
  --GitGutterChange = {fg=Darker.blue};
  --GitGutterDelete = {fg=Darker.red};
  --GitGutterChangeDelete = {fg=Darker.violet};

  --SignifySignAdd = {fg=Darker.green};
  --SignifySignChange = {fg=Darker.blue};
  --SignifySignDelete = {fg=Darker.red};

  --dbui_tables = {fg=Darker.blue};

  --DefxIconsParentDirectory = {fg=Darker.orange};
  --Defx_filename_directory = {fg=Darker.blue};
  --Defx_filename_root = {fg=Darker.red};

  --DashboardShortCut = {fg=Darker.violet};
  --DashboardHeader = {fg=Darker.orange};
  --DashboardCenter = {fg=Darker.blue};
  --DashboardFooter = {fg=Darker.grey};

  --LspDiagnosticsSignError = {fg=Darker.red};
  --LspDiagnosticsSignWarning = {fg=Darker.yellow};
  --LspDiagnosticsSignInformation = {fg=Darker.blue};
  --LspDiagnosticsSignHint = {fg=Darker.cyan};

  --LspDiagnosticsVirtualTextError = {fg=Darker.red};
  --LspDiagnosticsVirtualTextWarning= {fg=Darker.yellow};
  --LspDiagnosticsVirtualTextInformation = {fg=Darker.blue};
  --LspDiagnosticsVirtualTextHint = {fg=Darker.cyan};

  --LspDiagnosticsUnderlineError = {style="undercurl",sp=Darker.red};
  --LspDiagnosticsUnderlineWarning = {style="undercurl",sp=Darker.yellow};
  --LspDiagnosticsUnderlineInformation = {style="undercurl",sp=Darker.blue};
  --LspDiagnosticsUnderlineHint = {style="undercurl",sp=Darker.cyan};

  --CursorWord0 = {bg=Darker.currsor_bg};
  --CursorWord1 = {bg=Darker.currsor_bg};

  --luaTreeFolderName = {fg=Darker.blue};
  --LuaTreeRootFolder = {fg=Darker.red};
  --LuaTreeSpecialFile = {fg=Darker.fg,bg=Darker.none,stryle='NONE'};

  --TelescopeBorder = {fg=Darker.teal};
  --TelescopePromptBorder = {fg=Darker.blue}
 }
 return syntax
end

function Darker.get_Darker_color()
 return Darker
end

function Darker.colorscheme()
 vim.api.nvim_command('hi clear')
 if vim.fn.exists('syntax_on') then
  vim.api.nvim_command('syntax reset')
 end
 vim.g.colors_name = 'Darker'
 vim.o.background = 'dark'
 vim.o.termguicolors = true

 local syntax = Darker.load_syntax()

 for group,colors in pairs(syntax) do
  Darker.highlight(group,colors)
 end
end

Darker.colorscheme()

return Darker
