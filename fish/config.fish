function fish_user_key_bindings
end

# bobthefish setting
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_ruby no

# opam configuration
source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
