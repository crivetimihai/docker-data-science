# Delete containers that exited
EXITED=$(docker ps -q -f status=exited)
[[ !  -z  $EXITED  ]] && docker rm $( docker ps -q -f status=exited)

# Delete dangling images
DANGLING=$( docker images -q -f dangling=true )
[[ ! -z $DANGLING ]] &&  docker rmi $( docker images -q -f dangling=true )