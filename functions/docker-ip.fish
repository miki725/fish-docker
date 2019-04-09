function docker-ip
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' (docker-id $argv[1])
end
