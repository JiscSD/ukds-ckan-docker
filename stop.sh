#!/bin/bash

check_if_user_using_root() {
    user=$(whoami)

    if [ "$user" = root ]; then
        echo "Don't execute this script as root"
        exit 1
    fi
}

stop_CKAN() {
  echo "Shutting down CKAN and removing containers"
  docker compose down
}

main () {
    check_if_user_using_root
    stop_CKAN
    exit 0
}

main
