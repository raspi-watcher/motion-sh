#!/bin/sh

DIR=/home/katososuke/motion/motion-sh/
. ${DIR}path.conf
. ${DIR}token.conf
CHANNEL=camera
TYPE=png
FILE_PATH=${DIR}raspberry-pi.png

$SLACKCAT -k $SLACK_TOKEN -c $CHANNEL -t $TYPE -m $FILE_PATH 2> ${DIR}on_event_start.log
