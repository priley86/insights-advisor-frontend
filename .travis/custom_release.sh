#!/bin/bash
set -e
set -x

if [ "${TRAVIS_BRANCH}" = "master" ]; then
    for env in ci qa
    do
        echo
        echo
        echo "PUSHING ${env}-beta"
        rm -rf ./dist
        .travis/release.sh "${env}-beta"
    done
fi

if [ "${TRAVIS_BRANCH}" = "master-stable" ]; then
    for env in ci qa
    do
        echo
        echo
        echo "PUSHING ${env}-beta"
        rm -rf ./dist
        .travis/release.sh "${env}-stable"
    done
fi
