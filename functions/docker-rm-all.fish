function docker-rm-all
	docker ps -a | grep -vi "CONTAINER" | awk '{print $1}' | xargs docker rm $argv
end
