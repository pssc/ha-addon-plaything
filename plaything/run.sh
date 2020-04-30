#!/bin/bash
#exec 2>&1
set -x 
date
echo Hello world!
env
cat /data/options.json
df -h
ps wxf 
touch /data/$(date -Iseconds)
ls -la /data
#ls -la /share
#ls -la /config
#ls -la /ssl
#ls -la /backup

#touch /srv/volume/$(date -Iseconds)
#ls -lR /srv/volume
ls -la /data/.marker

function stop_play() {
    echo stop
    : > /data/.flop
   cmarker
}

function cmarker { 
    COUNT=0
    CMAX=15
    echo count
    while [ $COUNT -lt $CMAX ];do
	    COUNT=$(($COUNT+1))
	    sleep 1
	    echo $COUNT
    done
    echo marker
    : > /data/.marker
    [ ! -z "$WAIT" ] && kill $WAIT
    exit 
}
#trap "echo SIGHUP;stop_play;exit" SIGHUP
#trap "echo term;stop_play;exit" SIGTERM SIGINT
#trap "echo exit;stop_play;exit" EXIT

#trap stop_play 15 1 # TERM
trap stop_play SIGTERM SIGHUP SIGINT
#trap "echo exit" EXIT
# TERM 15
# HUP 1
# INT 2
# exit 0

sleep 7d &
wait

