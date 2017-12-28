sudo mount -t cifs -o user=$1,dom=fareast,uid=$(id -u),gid=$(id -g),cruid=$(id -u),vers=3.0,forceuid,forcegid //172.23.232.101/VC_VIDEO_RECOGNITION$ ~/remote_disk
ln -s ~/remote_disk/Users/v-xizzhu/ILSVRC2015 $1
