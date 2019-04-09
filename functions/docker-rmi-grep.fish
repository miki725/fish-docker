function docker-rmi-grep --argument pattern --argument to_leave
	if test -z "$to_leave"
		set to_leave 1
		echo 'Defaulting to leave one last image'
	end

	set images (docker images | grep $pattern | awk '{print $3}')

	if test "$to_leave" != '0'
		for to_exclude in (echo $images | tr " " "\n" | head -n $to_leave)
			set images (echo $images | tr " " "\n" | grep -v $to_exclude)
		end
	end

	echo $images | tr " " "\n" | xargs docker rmi -f
end
