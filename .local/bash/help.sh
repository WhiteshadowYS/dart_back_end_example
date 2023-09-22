#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"

default_home="$( cd "$SCRIPT_DIR/../.." && pwd)"
default_name=$(basename $default_home)
PROJECT_HOME=$(echo "$default_name" | tr a-z A-Z)
PROJECT_HOME_NAME="${PROJECT_HOME}_HOME"
PROJECT_HOME=$(eval echo \$$PROJECT_HOME_NAME)

pushd "$PROJECT_HOME/.local" || exit

cat << EOF
Base Project Home development environment.

Usage: lalee command [options]

Commands:
  cd - navigate to the BPS_HOME directory
  help - print this help message

  start [options] - start local docker-compose
  stop [options] - stop local docker-compose
  restart [options] - restart local docker-compose

  exec [options] - execute a command in the running docker-compose service
  run [options] - run a command in a new docker-compose service

  console - provides access to the backend container console

  status - show status of docker-compose services
  logs - show logs of docker-compose services
EOF
