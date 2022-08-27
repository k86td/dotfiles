
lua << EOF
local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {'/home/tlepine/dap/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
EOF

map <C-F5> :lua require'dap'.continue() <CR>
map <C-F9> :lua require'dap'.toggle_breakpoint() <CR>
map <C-F10> :lua require'dap'.step_over() <CR>
map <C-F11> :lua require'dap'.step_into() <CR>
map <C-F12> :lua require'dap'.step_out() <CR>

map <C-D>dv :lua require('dap.ui.widgets').hover().open() <CR>
map <C-D>ds :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.scopes).open() <CR>
map <C-D>df :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.frames).open() <CR>
map <C-D>dt :lua local widgets = require('dap.ui.widgets'); local win = widgets.centered_float(widgets.threads).open() <CR>
