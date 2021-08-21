###

# update suckless software
dwm_dir="$HOME/.config/suckless/dwm"
slstatus_dir="$HOME/.config/suckless/slstatus"
dmenu_dir="$HOME/.config/suckless/dmenu"

cd $dwm_dir && sudo rm config.h && sudo make install &&  cd $dmenu_dir && sudo rm config.h && sudo make install && cd $slstatus_dir && sudo rm config.h && sudo make install && killall slstatus



