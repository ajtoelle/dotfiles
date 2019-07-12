function clear-port
  commandline -i 'lsof -ti :'
  commandline -a ' | xargs kill -9'
end
