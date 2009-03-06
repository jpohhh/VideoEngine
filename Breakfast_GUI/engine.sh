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
resource_path=$(defaults read com.Breakfast.engine ResourcePath)
queue_item=$(head -n1 ${resource_path}/queue.txt)
until [ "$queue_item" = "" ]
do
	sourcename=$(echo $queue_item | awk -F\; '{print $1}')
	outputname=$(echo $queue_item | awk -F\; '{print $2}')
	encodingoptions=$(echo $queue_item | awk -F\; '{print $3}')
	logname=$(echo $queue_item | awk -F\; '{print $4}')
	echo "BEGINNING ENCODE WORK" > "$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> "$shortlog"
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> "$logfile"
	echo Source: "$sourcename" >> "$logname"
	echo Output: "$outputname" >> "$logname"
	echo Encoding options: "$encodingoptions" >> "$logname"
	$resource_path/HandBrakeCLI -i "$sourcename" -o "$outputname" $encodingoptions -v 1>> "$logname" 2>> "$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> "$shortlog"
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> "$logfile"
	echo "ENCODE COMPLETED" >> "$logname"
	${resource_path}/detail.sh "$outputname" &> /dev/null & sed -i -e "1d" ${resource_path}/queue.txt
	rm queue.txt-e
	queue_item=$(head -n1 ${resource_path}/queue.txt)
done
# This isn't a good place to sync the iPod, because this script often finished before the detail.sh scraper, which makes
# the sync useless. But I'm leaving this here until I figure out what to do with it.
#osascript -e 'tell application "iTunes"' -e "repeat with s in sources" -e "if (kind of s is iPod) then update s" -e "end repeat" -e "end tell"
#
#
# We don't need the progress bar anymore. Close Breakfast.
osascript -e 'tell application "Breakfast"' -e "quit" -e 'end tell'