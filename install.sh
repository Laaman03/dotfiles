# copy all files to .config regardless of
# wheter they will do anything there

cp -R xdg_config/* $HOME/.config

# put the bash files where they belong
cp xdg_config/bash/.[a-zA-Z]* $HOME
