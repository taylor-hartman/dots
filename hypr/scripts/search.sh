if pgrep -x "wofi" > /dev/null
then
    pkill -x "wofi"
    exit 0
fi

wofi
