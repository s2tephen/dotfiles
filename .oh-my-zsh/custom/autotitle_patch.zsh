function omz_termsupport_precmd {
  emulate -L zsh

  if [[ "$DISABLE_AUTO_TITLE" == true ]]; then
    return
  fi

  [[ $(pwd) == $HOME ]] && title "~" || title "%~"
}
