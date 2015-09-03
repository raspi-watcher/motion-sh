#!/bin/sh

EVENT_TYPE=on_movie_end

DIR=/home/pi/motion/motion-sh/
. ${DIR}path.conf
. ${DIR}token.conf
CHANNEL=camera
TYPE=gif
# FILE_PATH=${DIR}raspberry-pi.png
FILE_PATH=${DIR}gif/out.gif

# ffmpeg -i input -vf scale=320:-1:flags=lanczos,fps=10 frames/ffout%03d.png
# convert -loop 0 frames/ffout*.png output.gif

# echo $1 | $SLACKCAT -k $SLACK_TOKEN -c $CHANNEL

ffmpeg -i $1 ${DIR}frames/out%03d.png 2> ${DIR}${EVENT_TYPE}.log
convert -loop 0 ${DIR}frames/out*.png ${DIR}gif/out.gif 2> ${DIR}${EVENT_TYPE}.log
$SLACKCAT -k $SLACK_TOKEN -c $CHANNEL -t $TYPE -m $FILE_PATH 2> ${DIR}${EVENT_TYPE}.log

