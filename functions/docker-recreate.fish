function docker-recreate
	docker-compose kill $argv
	docker-compose rm -f
	docker-compose up -d $argv
end
