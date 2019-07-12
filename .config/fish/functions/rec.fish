function rec
  set fileName (ddtt)
  set path ~/code/notes/cli-log/$fileName.json
  echo recording to file $path
  command asciinema rec $path
end
