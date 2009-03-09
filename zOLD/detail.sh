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
until [ "$*" = "" ]
do
	logfile=$HOME/Library/Logs/Engine_debug.log
	shortlog=$HOME/Library/Logs/Engine.log
	#parse filename
		first_character=$(echo $episode | cut -c 1)
		season_episode=$(basename "$1" | sed 's/\./ /g' | sed 's/.*\([Ss][0-9][0-9][EeXx][0-9][0-9]\).*/\1/')
		season=$(echo $season_episode | awk -F[EeXx] '{print $1}'| awk -F[Ss] '{print $2}' | sed 's/0\(**\)/\1/')
		episode=$(echo $season_episode | awk -F[EeXx] '{print $2}')
			#strip first 0 of episode number
			first_character=$(echo $episode | cut -c 1)
			if [ $first_character == "0" ]
			then
				episode=$(echo $episode | cut -c 2)
			fi
		file_extension=$(basename "$1" | sed 's/\./ /g' | awk '{print $NF}')
		tv_show=$(basename "$1" | sed 's/\./ /g' | sed 's/ [Ss]..[EeXx].*//')
			#strip i at front of TV show -- I use this to denote my iPhone encodes
			first_character=$(echo $tv_show | cut -c 1)
			if [ $first_character == "i" ]
			then
				length=${#tv_show}
				tv_show=$(echo $tv_show | cut -c2-$length)
			fi
		time=$(date +%Y%m%d-%H%M%S); echo $time "1) RECEIVED " "$1" >> "$logfile"
		time=$(date +%Y%m%d-%H%M%S); echo $time "2) PARSED Season: "$season "Episode: "$episode "Extension: "$file_extension "TV show: "$tv_show >> "$logfile"

		if [ "$file_extension" != "m4v" ]
		then
			if [ "$file_extension" != "mp4" ]
			then
				time=$(date +%Y%m%d-%H%M%S); echo $time "Non-MP4 in input, script halted" >> "$logfile"
				time=$(date +%Y%m%d-%H%M%S); echo $time "$1" ":Non-MP4 in input, script halted" >> "$shortlog"
				break
			fi
		fi
	#1a - generate mirror URL
		curl http://www.thetvdb.com/api/9F21AC232F30F34D/mirrors.xml > mirrors.xml 2>> /dev/null
		tvdb=$(grep 'mirrorpath' mirrors.xml | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		tvdb=$tvdb/api/9F21AC232F30F34D
		time=$(date +%Y%m%d-%H%M%S); echo $time "3) GOT MIRROR URL: "$tvdb >> "$logfile"
		rm mirrors.xml

	#2 - get last update time
		curl $tvdb/updates > updates.xml 2>> /dev/null
		previoustime=$(grep 'Data time' updates.xml | awk -F\< '{print $2}' | awk -F\= '{print $2}' | awk -F\" '{print $2}')
		echo "\"" > /dev/null #workaround xcode seeing \" in the above awk statement and highlighting code poorly
		time=$(date +%Y%m%d-%H%M%S); echo $time "4) PREVIOUS_TIME: "$previoustime >> "$logfile"
		rm updates.xml 

	#3 - pull series info from TVDB
		tv_show=$(echo $tv_show | sed 's/ /%20/g')

		
		time=$(date +%Y%m%d-%H%M%S); echo $time "5) SERIES REQUEST" http://www.thetvdb.com/api/GetSeries.php?seriesname=$tv_show >> "$logfile"
		series_id=$(curl http://www.thetvdb.com/api/GetSeries.php?seriesname=$tv_show | grep -m 1 "seriesid" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		
		# kludgy, hacky, annoying way to get around recently bad results by thetvdb
		is_this_office=$(echo "$tv_show" | grep -i 'office')
		if [ "$is_this_office" = "" ]
		then
			echo
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time "Series contains Office, manual override to The Office (US)." >> "$logfile"
			series_id=$(echo "73244")
		fi

		series_data=$HOME/Library/Application\ Support/Engine/$series_id.xml
		time=$(date +%Y%m%d-%H%M%S); echo $time "6) RECEIVED: "$tvdb/series/$series_id/en.xml to "$series_data" >> "$logfile"
		curl $tvdb/series/$series_id/en.xml > "$series_data" 2>>/dev/null

	#4 - pull episode in from from TVDB
		episode_data=$HOME/Library/Application\ Support/Engine/episode.xml
		time=$(date +%Y%m%d-%H%M%S); echo $time "7) EPISODE PULL: "$tvdb/series/$series_id/default/$season/$episode/en.xml to "$episode_data" >> "$logfile"
		curl $tvdb/series/$series_id/default/$season/$episode/en.xml > "$episode_data" 2>>/dev/null
		success=$(cat "$episode_data" | grep "not found")
		if [ "$success" != "" ]
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "broken episode data, aborting" >> "$logfile"
			break
		fi
		
	
	#generate tags and tag with mp4tags
		cnam=$(grep 'EpisodeName' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cart=$(grep 'SeriesName' < "$series_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cday=$(grep 'FirstAired' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		# can't set content rating
		# can't set genre
		desc=$(grep 'Overview' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}' | sed 's/&quot;/\"/g')
		stik=$(echo 10)
		# can't write actors, directors, writers
		# tvsh = cnam
		tven=$(grep 'ProductionCode' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		#some episodes don't have an episode ID, if there isn't one just make it the same as the episode number
		if [ "$tven" = "" ]
		then
			tven=$episode
		fi
		tvnn=$(grep 'Network' < "$series_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		tvsn=$season
		tves=$episode
		cover_art_url=$(grep 'filename' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		curl http://images.thetvdb.com/banners/$cover_art_url > $HOME/Library/Application\ Support/Engine/coverart.jpg 2>>/dev/null
	
	#check if video has width > 1270, if so, tag it as HD with mp4tags
		res=$($HOME/Library/Application\ Support/Engine/mp4track --list "$1" | grep -m 1 width | awk '{print $3}' | awk -F. '{print $1}')
		if (($res>490))
		then
			hdvd="1"
		else
			hdvd="0"
		fi
		cnid=$(echo "$series_id""$season""$episode")
		
	#list tags we got, then tag using mp4tags
		time=$(date +%Y%m%d-%H%M%S); echo $time "7) PULLED TAGS Show name:"$cart "Episode name:"$cnam "Aired:"$cday "Description:"$desc "Stik:"$stik "tven:"$tven "tvnn:"$tvnn "cover_art_url:"$cover_art_url "hdvd":$hdvd "cnid:"$cnid >> "$logfile"
		$HOME/Library/Application\ Support/Engine/mp4tags "$1" -I $cnid -H $hdvd -song "$cnam" -a "$cart" -y $cday -m "$desc" -l "$desc" -i tvshow -S "$cart" -M $episode -N $tvnn -n $season -o $tven 1>>"$logfile" 2>>"$logfile"


	#begin art logic
		last_covr_index=$(mp4art --list "$1" | tail -1 | awk '{print $1}')
	#if there's no covr-box, add one with pulled art
		if [ "$last_covr_index" = "----------------------------------------------------------------------" ]
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "No art yet, adding art from TheTVDB" >> "$logfile"
			art_size=$(ls -l $HOME/Library/Application\ Support/Engine/coverart.jpg | awk '{print $5}')
			if (($art_size>999))
			then
				$HOME/Library/Application\ Support/Engine/mp4art --keepgoing --add $HOME/Library/Application\ Support/Engine/coverart.jpg --art-index 0 "$1"
			else
				time=$(date +%Y%m%d-%H%M%S); echo $time "Art is smaller than a kilobyte, highly likely its garbage so skipping." >> "$logfile"
			fi
	#if there's more than one covr-box, remove all and add one with pulled art
		elif (($last_covr_index>0))
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "Multiple artwork on this file, removing all and adding art from TheTVDB" >> "$logfile"
			$HOME/Library/Application\ Support/Engine/mp4art --keepgoing --remove --art-any "$1"
			$HOME/Library/Application\ Support/Engine/mp4art --keepgoing --add $HOME/Library/Application\ Support/Engine/coverart.jpg --art-index 0 "$1"
	#if there already is cover-art, cool!
		elif (($last_covr_index==0))
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "Already art on this file, skipping adding art" >> "$logfile"
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time "Art parsing broken, the value for $last_cover index we got is:" $last_covr_index >> "$logfile" 
		fi
		
		rm "$series_data"
		rm $HOME/Library/Application\ Support/Engine/coverart.jpg
		rm $HOME/Library/Application\ Support/Engine/episode.xml
	
	
	time=$(date +%Y%m%d-%H%M%S); echo $time Tagged $cart-$season$episode to "$1" >> "$shortlog"
	#go to next file
	shift
done