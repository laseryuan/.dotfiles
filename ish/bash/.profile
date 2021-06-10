if pgrep -f "cat /dev/location" > /dev/null
then
  echo "already started ish in background"
else
  cat /dev/location > /dev/null &
fi

sshyou() {
  ssh -J sish.unsown.top:2222 ride@$1
}

msshyou() {
  mosh -J sish.unsown.top:2222 ride@$1
}
