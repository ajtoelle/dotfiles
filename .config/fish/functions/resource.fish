function resource
  read -l -p 'echo "Resource for reals? [Y/n] > "' confirm
  set_color blue
  switch $confirm
    case 'n'
      echo "you chose _"$confirm"_, sooo.... NO"
    case 'N'
      echo "you chose _"$confirm"_, sooo.... NO"
    case "*"
      echo "You chose _$confirm_, so.... "
      source ~/.config/fish/config.fish
  end
  set_color normal
end
