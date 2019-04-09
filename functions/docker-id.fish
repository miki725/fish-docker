function docker-id
	docker ps | grep $argv[1] | awk '{ print $1 }'
end
