#!/bin/sh
fly -t lite sp -p smb-volume-service \
    -c `dirname $0`/pipeline.yml \
    -l `dirname $0`/credentials.yml
