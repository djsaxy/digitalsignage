#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#
# Wait up to 30 seconds for network to come online before continuing for IP address
count=0
mcount=30

while [ "$(hostname -I)" = "" ]; do
  echo -e "\e[1A\e[KNo network: $(date)"
  sleep 1
  let "count+=1"
  [[ ${count} -gt ${mcount} ]] && exit 1
done

echo "* Network is online"

sleep 3

#Uncomment this line once chromium auto-refresh plugin is configured or if no additional configuration is needed.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor
