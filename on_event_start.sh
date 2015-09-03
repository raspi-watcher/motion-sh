#!/bin/sh

EVENT_TYPE=on_event_start

DIR=/home/pi/motion/motion-sh/
. ${DIR}path.conf
. ${DIR}token.conf
CHANNEL=camera

echo `date`"\n"$EVENT_TYPE | $SLACKCAT -k $SLACK_TOKEN -c $CHANNEL 2> ${DIR}${EVENT_TYPE}.log

