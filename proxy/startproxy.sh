#!/bin/bash
cd "$(dirname "$0")"

if test -z $MPP_URI
then export MPP_URI=https://www.multiplayerpiano.com
fi

if test -z $MPP_ORIGIN
then export MPP_ORIGIN=https://www.multiplayerpiano.com
fi

export DOLLAR=$
envsubst < nginx.conf.template > /tmp/nginx.conf
nginx -c /tmp/nginx.conf