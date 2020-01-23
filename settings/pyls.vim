augroup vimlsp_settings_pyls
  au!
  LspRegisterServer {
      \ 'name': 'pyls',
      \ 'cmd': {server_info->lsp_settings#get('pyls', 'cmd', [lsp_settings#exec_path('pyls')])},
      \ 'root_uri':{server_info->lsp_settings#get('pyls', 'root_uri', lsp_settings#root_uri(g:lsp_settings_root_markers))},
      \ 'initialization_options': lsp_settings#get('pyls', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('pyls', 'whitelist', ['python']),
      \ 'blacklist': lsp_settings#get('pyls', 'blacklist', []),
      \ 'config': lsp_settings#get('pyls', 'config', {}),
      \ 'workspace_config': lsp_settings#get('pyls', 'workspace_config', {}),
      \ }
augroup END
