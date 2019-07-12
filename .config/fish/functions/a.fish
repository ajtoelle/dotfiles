function a
  if not test -f .config/fish/aliases.fish
    echo There is no spoon
    command mkdir -p .config/fish
    command echo 'echo There is sort of a spoon...'>.config/fish/aliases.fish
  else
    source .config/fish/aliases.fish
  end
end
