function docker-recreate
    set -l volumes (docker inspect (docker-compose ps -q $argv) | jq -r '.[0].Mounts[].Name')
	docker-compose kill $argv
	docker-compose rm -f
    for i in $volumes
        docker volume rm $i
    end
	docker-compose up -d $argv
end
