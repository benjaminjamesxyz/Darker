local Darker = {
 bg = '#0c1012';
 fg = '#dbdbdb';

 visual = '#141c1f';
 comment = '#222d33';
 specialcomment = '#253137';

 linenr = '#00c2c2';
 cursorlinenr = '';

 matchparen = '#19A194';
 search = '#208FC5',

 warningmsg = '#FFEA00';

 menufg = '#EAE9E8';
 pmenu = '#0A0C0F';
 pmenusel = '#16181B';

 tabLinefg = '#EAE9E8';
 tabLinebg = '#253137';
 tabLineSelfg = 'EAE9E8';
 tabLinefillfg = 'EAE9E8';
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
 Operator = '#6b00ff';

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

 pythonTodo = '#cbff14';
 pythonTripleQuotes = '#946257';

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
  Normal = {fg = Darker.fg, bg=Darker.bg};
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

  Terminal = {fg = Darker.fg, bg=Darker.bg};
  SignColumn = {fg=Darker.fg, bg=Darker.bg};
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
 Function = {fg=Darker.Function};
 Operator = {fg=Darker.Operator};

 Statement = {fg=Darker.Statement};
 Conditional = {fg=Darker.Conditional};
 Repeat = {fg=Darker.Repeat};
 Label = {fg=Darker.Label};
 Keyword = {fg=Darker.Keyword};
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

 pythonStatement = {fg=Darker.Statement};
 pythonConditional = {fg=Darker.Conditional};
 pythonRepeat = {fg=Darker.Repeat};
 pythonOperator = {fg=Darker.Operator};
 pythonException = {fg=Darker.Exception};
 pythonInclude = {fg=Darker.Include};
 pythonDecorator = {fg=Darker.Define};
 pythonFunction = {fg=Darker.Function};
 pythonComment = {fg=Darker.comment};
 pythonTodo = {fg=Darker.pythonTodo};
 pythonString = {fg=Darker.String};
 pythonRawString = {fg=Darker.String};
 --pythonQuotes = {fg=};
 pythonTripleQuotes = {fg=Darker.pythonTripleQuotes};
 --pythonEscape = {fg=};
 pythonNumber = {fg=Darker.Number};
 --pythonBuiltin = {fg=};
 --pythonExceptions = {fg=};
 --pythonSpaceError = {fg=};
 --pythonDoctest = {fg=};
 --pythonDoctestValue = {fg=};

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
