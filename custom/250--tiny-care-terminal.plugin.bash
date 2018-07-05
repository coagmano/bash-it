cite about-plugin
about-plugin 'ENV vars for tiny-care-terminal'
# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='magicrealismbot,selfcare_bot,abcnews'

# Use this to have a different animal say a message in the big box.
# TTC_SAY_BOX = parrot | bunny | llama | cat | yeoman | mario | ironman | minions | panda
export TTC_SAY_BOX='parrot'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/development/,~/displayground'

# The max directory-depth to look for git repositories in
# the directories defined with `TTC_REPOS`. Note that the deeper
# the directory depth, the slower the results will be fetched.
export TTC_REPOS_DEPTH=2

# Which method is to be used to read the git commits ('gitstandup' | 'gitlog').
# If you're having problems seeing your commits in the dahsboard, set
# this value to gitlog.
export TTC_GITBOT='gitlog'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Sydney'

# Set to false if you're an imperial lover <3
export TTC_CELSIUS=true

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=20

# Turn off terminal title
export TTC_TERMINAL_TITLE=false

# Twitter api keys
export TTC_CONSUMER_KEY='K3Qq6LZ4xY7a8PJXKjq6uJeCH'
export TTC_CONSUMER_SECRET='YV3LptwMejbbLIa4fhtsGQMkma0ToH9CQ6yH75P1Rz2T0PYErl'
export TTC_ACCESS_TOKEN='7904622-rqFKgVjsR7D6QUdDKlCZ9jxWKteh3pOi4o1MqLSXsN'
export TTC_ACCESS_TOKEN_SECRET='7lpT5DUh0Hi0A2vYIVqb0PTOQx2m74rLhFBQRQaWOWzhf'

# Note: in tiny-terminal-care < 1.0.7, the recommended variables for the Twitter
# API keys were the ones before. As of 1.0.8, they are deprecated
# (because the names are too generic), but will still be supported
# until the next major version.
