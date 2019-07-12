function :q
  read -l -p 'echo "Exit for reals? [Y/n] > "' confirm
  set_color blue
  switch $confirm
    case 'n'
      echo "you chose _"$confirm"_, sooo.... NO exit"
    case 'N'
      echo "you chose _"$confirm"_, sooo.... NO exit"
    case "*"
      echo "You chose _$confirm_, so.... exit"
      exit
  end
  set_color normal
end
