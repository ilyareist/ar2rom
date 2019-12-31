#!/usr/bin/env bash

NUMBER=$1

case "${NUMBER}" in
    "help")
        shift
        exec ./ar2rom
        ;;
    *)
        shift
        export NUM=${NUMBER}
        exec ./ar2rom ${NUMBER}
        ;;
esac
