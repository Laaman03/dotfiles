# copy all files to .config regardless of
# wheter they will do anything there

for d in xdg_config/*/; do
	rm -rf $HOME/${d/xdg_/.}
done
cp -R xdg_config/* $HOME/.config

# put the bash files where they belong
cp xdg_config/bash/.[a-zA-Z]* $HOME

# .Xresources / urxvt
rm -rf $HOME/.urxvt/*
cp -R xdg_config/urxvt/* $HOME/.urxvt
cp xdg_config/Xresources/.Xresources $HOME
