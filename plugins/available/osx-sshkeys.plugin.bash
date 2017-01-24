# Force Sierra to load ssh key passphrases on new session
cite about-plugin
about-plugin 'Force Sierra to load ssh key passphrases in new sessions'

{ eval `ssh-agent`; ssh-add -A; } &>/dev/null
