#   This file is part of Engine.
#
#   Engine is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   Engine is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with Engine.  If not, see <http://www.gnu.org/licenses/>.
# 
#   The initial developer of the original code is James O'Leary.
#   Portions created by James O'Leary are copyright (C) 2009.
#   All rights reserved.
#
#  Contributors:
#      James O'Leary, jpo@me.com



#!/bin/bash
queue_item=$(head -n1 $HOME/Library/Application\ Support/Engine/queue.txt)
until [ "$queue_item" = "" ]
do
	sourcename=$(echo $queue_item | awk -F\; '{print $1}')
	outputname=$(echo $queue_item | awk -F\; '{print $2}')
	encodingoptions=$(echo $queue_item | awk -F\; '{print $3}')
	logname=$(echo $queue_item | awk -F\; '{print $4}')

	echo "BEGINNING ENCODE WORK" > "$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> $HOME/Library/Logs/Engine.log
	time=$(date +%Y%m%d-%H%M%S); echo $time Starting to encode "$sourcename" >> $HOME/Library/Logs/Engine_debug.log
	echo Source: "$sourcename" >> "$logname"
	echo Output: "$outputname" >> "$logname"
	echo Encoding options: "$encodingoptions" >> "$logname"
	nice $HOME/Library/Application\ Support/Engine/HandBrakeCLI -i "$sourcename" -o "$outputname" $encodingoptions -v 1>> "$logname" 2>> "$logname"
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> $HOME/Library/Logs/Engine.log
	time=$(date +%Y%m%d-%H%M%S); echo $time Finished encoding "$sourcename" >> $HOME/Library/Logs/Engine_debug.log
	echo "ENCODE COMPLETED" >> "$logname"
	$HOME/Library/Application\ Support/Engine/detail.sh "$outputname" &> /dev/null & sed -i -e "1d" $HOME/Library/Application\ Support/Engine/queue.txt
	rm queue.txt-e
	queue_item=$(head -n1 $HOME/Library/Application\ Support/Engine/queue.txt)
done