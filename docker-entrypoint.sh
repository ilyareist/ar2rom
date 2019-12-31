#!/usr/bin/env bash

NUMBER=$1

case "${NUMBER}" in
    "help")
        shift
        exec make help
        ;;
    *)
        shift
        export NUM=${NUMBER}
        exec make run
        ;;
esac
