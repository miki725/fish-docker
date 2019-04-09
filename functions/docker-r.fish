function docker-r
	docker-compose run --rm --service-ports --no-deps $argv
end
