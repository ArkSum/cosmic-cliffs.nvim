if !has('nvim')
  echohl ErrorMsg
  echom "cosmic-cliffs.nvim requires Neovim"
  echohl None
  finish
endif

lua require("cosmic-cliffs").setup()
