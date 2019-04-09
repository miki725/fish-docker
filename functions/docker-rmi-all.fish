function docker-rmi-all
	docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi
end
