#!/bin/bash
#====================================================
#
#          FILE: Start-Docker-Sickbeard.sh
# 
#         USAGE: ./Start-Docker-Sickbeard.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/01/2018 00:43
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{


docker create --name=headphones \
	-v /home/brettsalemink/development/Docker/docker-headphones-armhf/config:/config \
	-v /torrents:/downloads \
	-v /torrents/completed/Music:/music \
	-e PGID=1001 -e PUID=1001 \
	-e TZ=America/Chicago \
	-p 8181:8181 \
	stiles/headphones

}	# end Main

Main

#===EXIT===
exit 0

