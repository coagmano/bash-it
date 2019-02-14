# Fast Node Manager `fnm`
#
# BASH_IT_LOAD_PRIORITY: 400
#
# Please install fnm from https://github.com/Schniz/fnm if you want to use it.

cite about-plugin
about-plugin 'Fast Node Manager Loader'

export FNM_DIR=${FNM_DIR:-$HOME/.fnm}

# This loads fnm
if [ "$FNM_DIR" ] && [ -r "$FNM_DIR"/fnm ];
then
  export PATH=$FNM_DIR:$PATH
  eval `fnm env`
fi

command -v fnm &>/dev/null
if [ $? -eq 1 ]; then
    echo "You must install fnm before you can use this plugin."
    echo "Please install the latest version from:"
    echo "https://github.com/Schniz/fnm"
fi
