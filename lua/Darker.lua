local Darker = {
 bg = '#0c1012';
 fg = '#dbdbdb';

 visual = '#141b1f';
 comment = '#546e7a';
 specialcomment = '#253137';

 linenr = '#00e676';
 cursorlinenr = '';

 statusLine = '#00c2c2';

 matchparen = '#19A194';
 search = '#208FC5',

 warningmsg = '#FFEA00';

 menufg = '#EAE9E8';
 pmenu = '#141b1f';
 pmenusel = '#253137';

 tabLinefg = '#EAE9E8';
 tabLinebg = '#253137';
 tabLineSelfg = '#EAE9E8';
 tabLinefillfg = '#EAE9E8';
 tabLinefillbg = '#141b1f';

 diffadd = '#00eb78';
 diffDelete = '#f44134';
 diffChange = '#222d33';

 error = '#D32B22';

 specialkey = '#00FF11';
 directory = '#6b00ff';

 Constant = '#27AE60';
 String = '#E67E22';
 Chatacter = '#E67E22';
 Number = '#F1C40F';
 Boolean = '#27AE60';
 Float = '#1ABC9C';

 Identifier = '#208FC5';
 Function = '#FDD835';
 Operator = '#ff2975';

 none = 'NONE';

 bold = 'bold';
 underline = 'underline';
 undercurl = 'undercurl';
 italic = 'italic';


 Statement = '#6b00ff';
 Conditional = '#6b00ff';
 Repeat = '#6b00ff';
 Label = '#6b00ff';
 Keyword = '#6b00ff';
 Exception = '#6b00ff';

 PreProc = '#E91E63';
 Include = '#E91E63';
 Define = '#E91E63';
 Macro = '#E91E63';
 PreCondit = '#E91E63';


 Type = '#00E031';
 StorageClass = '#1A237E';
 Structure = '#0D47A1';
 Typedef = '#B71C1C';

 SpecialChar = '#3599DB';
 Delimiter = '#28978C';
 Todo = '#cbff14';

 pythonTripleQuotes = '#946257';
 pythonQuotes = '#946257';

 Dot = '#03aefc';

 luaBraces = '#c6ff00';

 plugUpdate = '#00ff83';
 plugName = '#6b00ff';

 scssVariable = '#E91E63';

 statusFileName = '#ff3d00';
 statusCocStatus = '#1979e6';
 statusPercentage = '#00ff6a';
 statusLineColumnNumber = '#00ff6a';
 statusFileType = '#9c00eb';
 statusFileEncoding = '#ffd600';
 statusFileFormat = '#ff1468';

}

function Darker.highlight(group, color)
 local style = color.style and 'gui=' .. color.style or 'gui=NONE'
 local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
 local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
 local gui = color.gui and 'gui=' .. color.gui or ''
 vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..' ' .. bg..' '..gui)
end

function Darker.load_syntax()
 local syntax = {
  Normal = {fg=Darker.fg, bg=Darker.bg};
  Visual = {fg=Darker.none, bg=Darker.visual};

  LineNr = {fg=Darker.linenr, bg=Darker.bg};
  CursorLineNr = {fg=Darker.cursorlinenr, bg=Darker.none, gui=Darker.bold};

  MatchParen = {fg=Darker.matchparen, bg=Darker.none};
  Search = {fg=Darker.bg, bg=Darker.search, gui=Darker.underline};

  ErrorMsg = {fg=Darker.error, bg=Darker.none};
  WarningMsg = {fg=Darker.warningmsg, bg=Darker.none};

  TabLine = {fg=Darker.tabLinefg,bg=Darker.tabLinebg};
  TabLineSel = {fg=Darker.tabLineSelfg,bg=Darker.background};
  TabLineFill = {fg=Darker.tabLinefillfg,bg=Darker.tabLinefillbg};

  StatusLine = {fg = Darker.statusLine, bg=Darker.bg};

  Terminal = {fg = Darker.fg, bg=Darker.bg};
  VertSplit = {fg=Darker.black,bg=Darker.bg};
  Comment = {fg=Darker.comment};

  WildMenu = {fg=Darker.menufg};
  Pmenu = {fg=Darker.menufg, bg=Darker.pmenu};
  PmenuSel = {fg=Darker.menufg, bg=Darker.pmenusel};
  PmenuSbar = {fg=Darker.menufg};
  PmenuThumb = {fg=Darker.menufg};

  Diffadd = {fg=Darker.diffadd, bg=Darker.background, gui=Darker.bold};
  DiffDelete = {fg=Darker.diffDelete, bg=Darker.background, gui=Darker.bold};
  DiffChange = {fg=Darker.diffChange, bg=Darker.background, gui=Darker.bold};
  SignColumn = {bg=Darker.background, gui=Darker.bold};

  Bold = {gui=Darker.bold};
  Underlined = {gui=Darker.undercurl};
  Italic = {gui=Darker.italic};

  Error = {fg=Darker.error, gui=Darker.undercurl};

 SpecialKey = {fg=Darker.specialkey};
 Directory = {fg=Darker.directory};

 Constant = {fg=Darker.Constant};
 String = {fg=Darker.String};
 Chatacter = {fg=Darker.Chatacter};
 Number = {fg=Darker.Number};
 Boolean = {fg=Darker.Boolean};
 Float = {fg=Darker.Float};

 Identifier = {fg=Darker.Identifier};
 Function = {fg=Darker.Function, gui=Darker.bold};
 Operator = {fg=Darker.Operator};

 Statement = {fg=Darker.Statement};
 Conditional = {fg=Darker.Conditional};
 Repeat = {fg=Darker.Repeat};
 Label = {fg=Darker.Label};
 Keyword = {fg=Darker.Keyword, gui=Darker.italic};
 Exception = {fg=Darker.Exception};


 PreProc = {fg=Darker.PreProc};
 Include = {fg=Darker.Include};
 Define = {fg=Darker.Include};
 Macro = {fg=Darker.Macro};
 PreCondit = {fg=Darker.PreCondit};

 Type = {fg=Darker.Type};
 StorageClass = {fg=Darker.StorageClass};
 Structure = {fg=Darker.Structure};
 Typedef = {fg=Darker.Typedef};

 SpecialChar = {fg=Darker.SpecialChar};
 Delimiter = {fg=Darker.Delimiter};
 Todo = {fg=Darker.Todo};

 pythonStatement = {fg=Darker.Statement};
 pythonConditional = {fg=Darker.Conditional};
 pythonRepeat = {fg=Darker.Repeat};
 pythonOperator = {fg=Darker.Operator};
 pythonException = {fg=Darker.Exception};
 pythonInclude = {fg=Darker.Include};
 pythonDecorator = {fg=Darker.Define};
 pythonFunction = {fg=Darker.Function};
 pythonComment = {fg=Darker.comment};
 pythonString = {fg=Darker.String};
 pythonRawString = {fg=Darker.String};
 pythonQuotes = {fg=Darker.pythonQuotes};
 pythonTripleQuotes = {fg=Darker.pythonTripleQuotes};
 --pythonEscape = {fg=};
 pythonNumber = {fg=Darker.Number};
 pythonDot = {fg=Darker.Dot};
 --pythonBuiltin = {fg=};
 --pythonExceptions = {fg=};
 --pythonSpaceError = {fg=};
 --pythonDoctest = {fg=};
 --pythonDoctestValue = {fg=};

 luaBraces = {fg=Darker.luaBraces};
 luaLocal = {fg=Darker.Type, gui=Darker.bold};
 luaFuncKeyword = {fg=Darker.Keyword, gui=Darker.italic};

 plugUpdate = {fg=Darker.plugUpdate, gui=Darker.bold};
 plugName = {fg=Darker.plugName, gui=Darker.bold};

 scssVariable = {fg=Darker.scssVariable};

 StatusFileName = {fg=Darker.statusFileName};
 StatusCocStatus = {fg=Darker.statusCocStatus};
 StatusPercentage = {fg=Darker.statusPercentage};
 StatusLineColumnNumber = {fg=Darker.statusLineColumnNumber};
 StatusFileType = {fg=Darker.statusFileType};
 StatusFileEncoding = {fg=Darker.statusFileEncoding};
 StatusFileFormat = {fg=Darker.statusFileFormat};
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
 vim.g.background = 'dark'
 vim.g.termguicolors = true
 vim.g.python_highlight_all = 1
 vim.g.html_my_rendering = 1

 local syntax = Darker.load_syntax()

 for group,colors in pairs(syntax) do
  Darker.highlight(group,colors)
 end
end

Darker.colorscheme()

return Darker
