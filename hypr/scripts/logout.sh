#!/usr/bin/env sh

# Check if wlogout is already running
if pgrep -x "wlogout" > /dev/null
then
    pkill -x "wlogout"
    exit 0
fi

# set file variables
wLayout="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/layout"
wlTmplt="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/style.css"

if [ ! -f $wLayout ] || [ ! -f $wlTmplt ] ; then
    echo "ERROR: Config $1 not found..."
    exit 1;
fi

# detect monitor res
x_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
y_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')

# scale config layout and style
wlColms=2
export x_mgn=$(( x_mon / 3))
export y_mgn=$(( y_mon / 4))

export outer_radius=100px

# eval config files
wlStyle=`envsubst < $wlTmplt`

# launch wlogout
wlogout -b 2 -c 0 -r 0 -m 0 --layout $wLayout --css <(echo "$wlStyle") --protocol layer-shell
