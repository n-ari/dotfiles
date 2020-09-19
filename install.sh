#!/bin/bash
set -eu

for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitignore" ] && continue
  [ "$f" = ".config" ] && continue
  [ "$f" = "fish" ] && continue
  ln -snfv "$HOME"/dotfiles/"$f" "$HOME"/"$f"
done

for f in `find .config -maxdepth 1 -mindepth 1`; do
  ln -snfv "$HOME"/dotfiles/"$f" "$HOME"/"$f"
done

for f in `find fish -maxdepth 1 -mindepth 1`; do
  ln -snfv "$HOME"/dotfiles/"$f" "$HOME"/.config/"$f"
done

