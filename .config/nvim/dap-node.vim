

map <C-F5> :lua require'dap'.continue() <CR>
map <C-F9> :lua require'dap'.toggle_breakpoint() <CR>
map <C-F10> :lua require'dap'.step_over() <CR>
map <C-F11> :lua require'dap'.step_into() <CR>
map <C-F12> :lua require'dap'.step_out() <CR>

map <C-D>dv :lua require('dap.ui.widgets').hover().open() <CR>
map <C-D>ds :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.scopes).open() <CR>
map <C-D>df :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.frames).open() <CR>
map <C-D>dt :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.threads).open() <CR>
