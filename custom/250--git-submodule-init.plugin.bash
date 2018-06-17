cite about-plugin
about-plugin 'Initialise git submodules from .gitmodules file'

function gitinitialisesubmodules {
    about 'Initialise git submodules from .gitmodules file'
    group 'custom'

    git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
        while read path_key path
        do
            url_key=$(echo $path_key | sed 's/\.path/.url/')
            url=$(git config -f .gitmodules --get "$url_key")
            branch_key=$(echo $path_key | sed 's/\.path/.branch/')
            branch=$(git config -f .gitmodules --get "$branch_key")

            if [ -n "$branch" ]; then
              git submodule add -b $branch $url $path
            else
              git submodule add $url $path
            fi
        done
}

alias gis='gitinitialisesubmodules'
