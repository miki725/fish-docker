function docker-rm-grep --argument pattern
	docker ps -a | grep -vi "CONTAINER" | egrep $pattern | awk '{print $1}' | xargs docker rm $argv
end
