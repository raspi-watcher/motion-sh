#!/bin/sh

EVENT_TYPE=on_camera_lost

DIR=/home/katososuke/motion/motion-sh/
. ${DIR}path.conf
. ${DIR}token.conf
CHANNEL=camera

echo `date`$EVENT_TYPE | $SLACKCAT -k $SLACK_TOKEN -c $CHANNEL 2> ${DIR}${EVENT_TYPE}.log