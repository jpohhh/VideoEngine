#   This file is part of Video Engine - A broadcatching system for Mac OS X.
#
#   Video Engine is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   Video Engine is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with Video Engine.  If not, see <http://www.gnu.org/licenses/>.
#
#   The initial developer of the original code is James O'Leary.
#   Portions created by James O'Leary are copyright (C) 2009.
#   All rights reserved.
#   
#	The Breakfast GUI was developed by J. Michael Dockery.
#	Portions created by J. Michael Dockery are copyright (c) 2009.
#	All rights reserved.
#
#  Contributors:
#		James O'Leary, jpo@me.com
#		J. Michael Dockery, dockery.michael@gmail.com
#!/bin/bash
logfile=$HOME/Library/Logs/Breakfast_debug.log
shortlog=$HOME/Library/Logs/Breakfast.log
mainscript=$(defaults read com.Breakfast.engine AppPath)
resource_path=$(defaults read com.Breakfast.engine ResourcePath)
queue_item=$(head -n1 ${resource_path}/queue.txt)
until [ "$queue_item" = "" ]
do
	#grab info from queue
	sourcename=$(echo $queue_item | awk -F\; '{print $1}')
	outputname=$(echo $queue_item | awk -F\; '{print $2}')
	encodingoptions=$(echo $queue_item | awk -F\; '{print $3}')
	logname=$(echo $queue_item | awk -F\; '{print $4}')
	
	#log that we're beginning an encode
	echo "BEGINNING ENCODE WORK" > "$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> "$shortlog"
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> "$logfile"
	echo Source: "$sourcename" >> "$logname"
	echo Output: "$outputname" >> "$logname"
	echo Encoding options: $encodingoptions >> "$logname"
	
	#start encoding
	eval $resource_path/HandBrakeCLI -i "'$sourcename'" $encodingoptions -o "'$outputname'" -v1 1>>"$logname" 2>>"$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> "$shortlog"
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> "$logfile"
	
	#check to make sure encode completed nicely, if it did pass to detail
	endMessage=$(tail -c 22 "$logname" | sed 's/\ //g')
	time=$(date +%Y%m%d-%H%M%S); echo $time Received endMessage "$endMessage" >> "$logfile"
	if [ $endMessage == "HandBrakehasexited." ]
		then
			${resource_path}/detail.sh "$outputname" &> /dev/null & sed -i -e "1d" ${resource_path}/queue.txt
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time Handbrake did not finish. Exiting without running detail.sh >> "$logfile"; sed -i -e "1d" ${resource_path}/queue.txt
	fi
	
	#clean up from sed
	rm queue.txt-e
	queue_item=$(head -n1 ${resource_path}/queue.txt)
done