#!/bin/sh

EVENT_TYPE=on_movie_start

DIR=/home/pi/motion/motion-sh/
. ${DIR}path.conf
. ${DIR}token.conf
CHANNEL=camera

echo $1 | $SLACKCAT -k $SLACK_TOKEN -c $CHANNEL 2> ${DIR}${EVENT_TYPE}.log

