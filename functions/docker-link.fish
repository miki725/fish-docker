function docker-link
	set -l source $argv[1]
	set -l source_id (docker-id $source)
	set -l target $argv[2]
	set -l target_id (docker-id $target)
	set -l hostname $argv[3]
	set -l link (docker-ip $target) $hostname
	set -l cmd "echo $link >> /etc/hosts"

	if docker exec -it $source_id grep $hostname /etc/hosts
		echo '$hostname is already present in $source /etc/hosts'
		return 1

	else
		docker exec -it $source_id bash -c "$cmd"

	end
end
