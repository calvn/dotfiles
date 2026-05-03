d() {
  docker "$@"
}

d-c() {
  if docker compose version >/dev/null 2>&1
  then
    docker compose "$@"
  elif (( $+commands[docker-compose] ))
  then
    docker-compose "$@"
  else
    echo "docker compose is not available"
    return 1
  fi
}
