# let ish run in background
if pgrep -f "cat /dev/location" > /dev/null
then
  echo "already started ish in background"
else
  cat /dev/location > /dev/null &
fi

mkdir -p ~/projects
cd ~/projects

sshyou() {
  ssh -J sish.unsown.top:2222 root@$1
}

dev() {
  ssh \
    -L :5900:desktop:5900 \
    -J sish.unsown.top:2222 \
    root@templates
}

scpyou() {
  server=$1
  shift
  scp -J sish.unsown.top:2222 ride@"$server":"/home/ride/projects/$@"
}
