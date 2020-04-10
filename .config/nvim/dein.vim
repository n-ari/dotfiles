" dein
let s:dein_config_dir = '~/.config/nvim'
let s:dein_cache_dir = '~/.cache/dein'
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)
  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
  if has('vim_starting') && dein#check_install()
    call dein#install()
  endif
  let s:removed_plugins = dein#check_clean()
  if len(s:removed_plugins) > 0
    call map(s:removed_plugins, "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
  endif
endif

