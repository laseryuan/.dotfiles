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
  ssh \
    -L :5900:desktop:5900 \
    -L :5901:desktop:5901 \
    -J sish.unsown.top:2222 \
  $1
}

sshme() {
  /usr/sbin/sshd
  ssh -fN \
    -R iphone:22:localhost:22000 \
    -p 2222 sish.unsown.top
}

syncfile() {
  rsync --partial -avz ubuntu@oracle-big.unsown.top:/home/ubuntu/.firefox/Downloads/rsync ~/oracle
}

dev() {
  sshyou ride@templates
}

scpyou() {
  server=$1
  shift
  scp -J sish.unsown.top:2222 \
    ride@"$server":"/home/ride/projects/$@"
}
