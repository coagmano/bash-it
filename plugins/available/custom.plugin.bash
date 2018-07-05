# link gpg-agent to pinentry for easy key signing
if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  if test -n "$(pgrep gpg-agent)"; then
    # gpg-agent running, kill it so it restarts
    kill $(pgrep gpg-agent)
  fi
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
