local Darker = {
 bg = '#0c1012';
 fg = '#dbdbdb';

 visual = '#141c1f';
 comment = '#222d33';

 linenr = '#008585';
 black ='#000000';
 none = 'NONE';
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
  Normal = {fg = Darker.fg,bg=Darker.bg};
  Visual = {fg=Darker.none,bg=Darker.visual};

  LineNr = {fg=Darker.linenr, bg=Darker.bg},
  Terminal = {fg = Darker.fg,bg=Darker.bg};
  SignColumn = {fg=Darker.fg,bg=Darker.bg};
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
