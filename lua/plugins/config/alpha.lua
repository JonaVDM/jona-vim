local melon = {
  [[                                  ]],
  [[                           ▓▓▓▓▓▓ ]],
  [[                       ▓▓▓▓░░░░▓▓ ]],
  [[                   ▓▓▓▓▓▓▒▒▒▒░░▓▓ ]],
  [[               ▓▓▓▓▓▓▓▓▒▒▒▒▓▓░░▓▓ ]],
  [[           ▓▓▓▓▓▓▓▓░░▒▒▒▒▒▒▒▒░░▓▓ ]],
  [[       ▓▓▓▓▓▓▓▓░░░░▒▒▒▒▓▓▒▒▓▓░░▓▓ ]],
  [[ ▓▓▓▓▓▓▓▓▓▓▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░▓▓ ]],
  [[ ▓▓░░▓▓▒▒░░▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒░░░░▓▓ ]],
  [[ ▓▓░░░░▒▒▓▓▒▒▒▒▒▒▒▒▒▒▓▓▒▒▓▓░░▒▒▓▓ ]],
  [[   ▓▓░░░░▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓░░░░▓▓   ]],
  [[     ▓▓░░░░▓▓▒▒▒▒▒▒▒▒▓▓░░░░▒▒▓▓   ]],
  [[       ▓▓▒▒░░░░░░░░░░░░░░▒▒▓▓     ]],
  [[         ▓▓██▒▒▒▒▒▒▒▒▒▒████       ]],
  [[             ██████████           ]]
}

local dash = require 'alpha.themes.dashboard'
dash.section.header.val = melon

dash.section.buttons.val = {
  dash.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dash.button("f", "  Find file", ":Telescope find_files<CR>"),
  dash.button("b", "  Open tree", ":NvimTreeOpen <CR>"),
  dash.button("c", "  Open Calendar", ":lua require 'orgmode'.action 'agenda.agenda' <CR>"),
  dash.button("q", "  Quit NVIM", ":qa<CR>"),
}

require 'alpha'.setup(dash.opts)
