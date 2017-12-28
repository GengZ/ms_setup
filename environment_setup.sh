# 1: path for vim.git
# 2: alias
# 3: path for remote_disk
# 4: path for ILSVRC data
# after sh ./this_file, manually install in vim

echo configuring vim...
mkdir -p $1
git clone git@github.com:GengZ/vim.git $1
cd $1
git checkout dpt
cp $1/.vimrc ~/
cp $1/.tmux.conf ~/

echo cloing vundle...
cd -
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ./mount_data.sh ${ALIAS} ${LOCAL_PATH}
# echo mounting data...
# mkdir -p $2
# sudo mount -t cifs -o user=$1,dom=fareast,uid=$(id -u),gid=$(id -g),cruid=$(id -u),vers=3.0,forceuid,forcegid //172.23.232.101/VC_VIDEO_RECOGNITION$ $2

# ./link_vid_data.sh ${path}
# echo linking ILSVRC2015 data...
# ln -s ~/remote_disk/Users/v-xizzhu/ILSVRC2015 $1
