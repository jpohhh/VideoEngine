#!/bin/bash
queue_item=$(head -n1 $HOME/Library/Application\ Support/Engine/queue.txt)
until [ "$queue_item" = "" ]
do
	echo $queue_item
	sourcename=$(echo $queue_item | awk -F\; '{print $1}')
	outputname=$(echo $queue_item | awk -F\; '{print $2}')
	handbrakelocation=$(echo $queue_item | awk -F\; '{print $3}')
	encodingoptions=$(echo $queue_item | awk -F\; '{print $4}')
	logname=$(echo $queue_item | awk -F\; '{print $5}')

	echo sourcename "$sourcename"
	echo output name "$outputname"
	echo handbrakelocation "$handbrakelocation"
	echo encodingoptions "$encodingoptions"
	echo logname "$logname"

	echo "BEGINNING ENCODE WORK" > "$logname"
	echo Source: "$sourcename" >> "$logname"
	echo Output: "$outputname" >> "$logname"
	echo Encoding options: "$encodingoptions" >> $logname
	$HOME/Library/Application\ Support/Engine/HandBrakeCLI -i "$sourcename" -o "$outputname" $encodingoptions 1>> $logname 2>> $logname
	sed -i -e "1d" $HOME/Library/Application\ Support/Engine/queue.txt
	rm queue.txt-e
	queue_item=$(head -n1 $HOME/Library/Application\ Support/Engine/queue.txt)
done