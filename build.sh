#!/bin/bash

check_if_user_using_root() {
    user=$(whoami)

    if [ "$user" = root ]; then
        echo "Don't execute this script as root"
        exit 1
    fi
}

build_CKAN() {
  echo "Building CKAN Container"
  docker build
}

main () {
    check_if_user_using_root
    build_CKAN
    exit 0
}

main