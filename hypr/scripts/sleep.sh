swayidle -w timeout 600 'swaylock -f -c 000000' \
            timeout 800 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000' &
