if status is-interactive
  starship init fish | source

  if type -q fastfetch
    fastfetch
  end
end

fish_add_path /home/tornheckr/.spicetify
