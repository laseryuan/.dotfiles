# let ish run in background
if pgrep -f "cat /dev/location" > /dev/null
then
  echo "already started ish in background"
else
  cat /dev/location > /dev/null &
fi

mkdir -p ~/projects
cd ~/projects

# start tmux or attach to an existing one
tmux a || tmux

sshyou() {
  ssh -J sish.unsown.top:2222 ride@$1
}

msshyou() {
  mosh -J sish.unsown.top:2222 ride@$1
}
