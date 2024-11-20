#!/bin/bash

check_if_user_using_root() {
    user=$(whoami)

    if [ "$user" = root ]; then
        echo "Don't execute this script as root"
        exit 1
    fi
}

# Start the Docker containers
start_CKAN() {
  echo "Starting CKAN"
  docker compose up -d
}

main () {
    check_if_user_using_root
    start_CKAN
}

main