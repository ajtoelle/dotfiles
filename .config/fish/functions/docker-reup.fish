function docker-reup
	#echo (docker stop $argv) and (docker rm $argv) and (docker build -t $argv .) and (docker run -d --name $argv $argv) and (docker ps)
	echo (docker stop $argv) and (docker rm $argv) and (docker build -t $argv ./contain/$argv) and (docker run --net=host -d --name $argv $argv) and (docker ps)
end
