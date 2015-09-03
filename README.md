# motion-sh

## dependencies

* Motion
* slackcat

## setup

### Motion

```
sudo apt-get install motion
```

If you use `Raspberry Pi Camera Module`, you need `motion-mmalcam`.

### slackcat

```
gem install slackcat
echo "export SLACK_TOKEN=<slack token you got>" >> ~/.bashrc
```

Please check you can use slackcat command.

### raspi-watcher

```
git clone https://github.com/raspi-watcher/motion-sh
sudo chgrp motion ./motion-sh
sudo chmod g+rwx ./motion-sh
sudo chmod -R g+w ./motion-sh
cd ./motion-sh
mkdir frames
sudo chgrp motion ./frames
sudo chmod g+rwx ./frames
mkdir gif
sudo chgrp motion ./gif
sudo chmod g+rwx ./gif
echo "SLACKCAT="`which slackcat` >> path.conf
echo "SLACK_TOKEN="$SLACK_TOKEN >> token.conf
```

I'm sorry. You have to open each shell scripts to change `DIR` value to this repository path in your environment.

```
vim ./on_movie_end.sh
...
```
