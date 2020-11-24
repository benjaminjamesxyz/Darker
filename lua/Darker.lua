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

 errormsg = '#D32B22';
 warningmsg = '#FFEA00';

 menubg = '#EAE9E8';
 pmenu = '#0A0C0F';
 pmenusel = '#16181B';

 tabLinefg = '#EAE9E8';
 tabLinebg = '#253137';
 tabLineSelfg = 'EAE9E8';
 tabLinefillfg = 'EAE9E8';
 tabLinefillbg = '#141b1f';

 diffadd = '';
 diffDelete = '';
 diffChange = '';
 signColumn = '';

 none = 'NONE';

 bold = 'bold';
 underline = 'underline';
}

function Darker.highlight(group, color)
 local style = color.style and 'gui=' .. color.style or 'gui=NONE'
 local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
 local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
 local gui = color.gui and 'gui=' .. color.gui or ''
 vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
  ' ' .. bg..' '..gui)
end


function Darker.load_syntax()
 local syntax = {
  Normal = {fg = Darker.fg, bg=Darker.bg};
  Visual = {fg=Darker.none, bg=Darker.visual};

  LineNr = {fg=Darker.linenr, bg=Darker.bg};
  CursorLineNr = {fg=Darker.cursorlinenr, bg=Darker.none, gui=Darker.bold};

  MatchParen = {fg=Darker.matchparen, bg=Darker.none};
  Search = {fg=Darker.bg, bg=Darker.search, gui=Darker.underline};

  ErrorMsg = {fg=Darker.errormsg, bg=Darker.none};
  WarningMsg = {fg=Darker.warningmsg, bg=Darker.none};

  TabLine = {fg=Darker.tabLinefg,bg=Darker.tabLinebg};
  TabLineSel = {fg=Darker.tabLineSelfg,bg=Darker.background};
  TabLineFill = {fg=Darker.tabLinefillfg,bg=Darker.tabLinefillbg};

  Terminal = {fg = Darker.fg, bg=Darker.bg};
  SignColumn = {fg=Darker.fg, bg=Darker.bg};
  VertSplit = {fg=Darker.black,bg=Darker.bg};
  Comment = {fg=Darker.comment};
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
