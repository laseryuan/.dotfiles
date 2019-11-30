#!/bin/sh

# go path
export GOPATH="${HOME}/.go"

# add go path
export PATH="/usr/local/go/bin:${GOPATH}/bin:${PATH}"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/laser/google-cloud-sdk/path.bash.inc' ]; then . '/home/laser/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/laser/google-cloud-sdk/completion.bash.inc' ]; then . '/home/laser/google-cloud-sdk/completion.bash.inc'; fi

