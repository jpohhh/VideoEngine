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
until [ "$*" = "" ]
do
	logfile=$HOME/Library/Logs/Breakfast_debug.log
	shortlog=$HOME/Library/Logs/Breakfast.log
	resource_path=$(defaults read com.Breakfast.engine ResourcePath)
	trim_state=$(defaults read com.Breakfast.engine TrimFileState) #bool returned as integer
	episode_date=$(echo 'no date')
	tv_show=$(echo 'no show')
	time=$(date +%Y%m%d-%H%M%S); echo $time "episode_date - RESULT: "$episode_date >> "$logfile"
	
	# if the show contains only the date in the filename, get this and then add to iTunes with no tags.
	# first we check for a date in some common formats.
	episode_date_check=$(basename "$1" | sed 's/\./ /g' | sed 's/.*\([0-9][0-9] [0-9][0-9] [0-9][0-9][0-9][0-9]\).*/\1/' )
	time=$(date +%Y%m%d-%H%M%S); echo $time "Check for MM DD YYYY - RESULT: "$episode_date_check >> "$logfile"
	case "$episode_date_check" in
		[0-9][0-9]\ [0-9][0-9]\ [0-9][0-9][0-9][0-9])
			time=$(date +%Y%m%d-%H%M%S); echo $time "The filename contains a date in the format MM DD YYYY - working on that assumption" >> "$logfile"
			episode_date=$(echo $episode_date_check | sed 's/ /\//g')
		;;
	esac
	
	episode_date_check=$(basename "$1" | sed 's/\./ /g' | sed 's/.*\([0-9][0-9][0-9][0-9] [0-9][0-9] [0-9][0-9]\).*/\1/' )
	time=$(date +%Y%m%d-%H%M%S); echo $time "Check for YYYY MM DD - RESULT: "$episode_date_check >> "$logfile"
	case "$episode_date_check" in
		[0-9][0-9][0-9][0-9]\ [0-9][0-9]\ [0-9][0-9])
			time=$(date +%Y%m%d-%H%M%S); echo $time "The filename contains a date in the format YYYY MM DD - working on that assumption" >> "$logfile"
			episode_date=$(echo $episode_date_check | sed 's/ /\-/g')
		;;
	esac
	
	episode_date_check=$(basename "$1" | sed 's/\./ /g' | sed 's/.*\([0-9][0-9][0-9][0-9][0-9][0-9]\).*/\1/' )
	time=$(date +%Y%m%d-%H%M%S); echo $time "Check for MMDDYY - RESULT: "$episode_date_check >> "$logfile"
	case "$episode_date_check" in
		[0-9][0-9][0-9][0-9][0-9][0-9])
			time=$(date +%Y%m%d-%H%M%S); echo $time "The filename contains six sequential numerals - working on the assumption MMDDYY" >> "$logfile"
			episode_date=$(echo $episode_date_check | sed 's/[0-9][0-9]/& /g' | sed 's/\ /\//g' | sed 's/\/$//')
		;;
	esac
	
	# if we've got what we think is a date, use it to fill in our variables.
	#time=$(date +%Y%m%d-%H%M%S); echo $time "episode_date - RESULT: "$episode_date >> "$logfile"
	if [ "$episode_date" != "no date" ]
	then
		time=$(date +%Y%m%d-%H%M%S); echo $time "The filename contains a date - working on that assumption" >> "$logfile"
		file_extension=$(basename "$1" | sed 's/\./ /g' | awk '{print $NF}')
			if [ "$file_extension" != "m4v" ]
			then
				if [ "$file_extension" != "mp4" ]
				then
					time=$(date +%Y%m%d-%H%M%S); echo $time "Non-MP4 in input, script halted" >> "$logfile"
					time=$(date +%Y%m%d-%H%M%S); echo $time "$1" ":Non-MP4 in input, script halted" >> "$shortlog"
					break
					fi
				fi
				#parse filename
				tv_show=$(basename "$1" | sed 's/\./ /g' | sed 's/.'"$episode_date_check"'.*//')
				basename_result=$(basename "$1")
				time=$(date +%Y%m%d-%H%M%S); echo $time "tv_show RESULT: "$tv_show >> "$logfile"
				#Check to see if we should trim (based on the radio button in preferences)
				if [ $trim_state == 1 ]
				then 	
					#strip i at front of TV show -- I use this to denote my iPhone encodes
					first_character=$(echo $tv_show | cut -c 1)
					if [ $first_character == "i" ]
					then
						length=${#tv_show}
						tv_show=$(echo $tv_show | cut -c2-$length)
					fi
				fi
	fi
	
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
		
		# If we don't have a show name yet, we need to get one.
		if [ "$tv_show" == "no show" ]
		then
			tv_show=$(basename "$1" | sed 's/\./ /g' | sed 's/ [Ss]..[EeXx].*//')
			#Check to see if we should trim (based on the radio button in preferences)
				if [ $trim_state == 1 ]
				then 	
					#strip i at front of TV show -- I use this to denote my iPhone encodes
					first_character=$(echo $tv_show | cut -c 1)
					if [ $first_character == "i" ]
					then
						length=${#tv_show}
						tv_show=$(echo $tv_show | cut -c2-$length)
					fi
				fi
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
		tvdb_mirror=$(grep 'mirrorpath' mirrors.xml | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		tvdb=$tvdb_mirror/api/9F21AC232F30F34D
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
		
		
		#Battlestar kludge
		is_this_battlestar=$(echo "$tv_show" | grep -i 'battlestar')
		if [ "$is_this_battlestar" = "" ]
		then
			echo
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time "Series contains Battlestar, manual override to Battlestar Galactica (2003)." >> "$logfile"
			series_id=$(echo "73545")
		fi
		
		
		
		series_data=${resource_path}/$series_id.xml
		time=$(date +%Y%m%d-%H%M%S); echo $time "6) RECEIVED: "$tvdb/series/$series_id/en.xml to "$series_data" >> "$logfile"
		curl $tvdb/series/$series_id/en.xml > "$series_data" 2>>/dev/null

	#4 - pull episode in from from TVDB
		episode_data=${resource_path}/episode.xml
		if [ "$episode_date" != "no date" ]
		then
			episode_date_grab=$(echo $episode_date | sed 's/ /%20/g' )
			time=$(date +%Y%m%d-%H%M%S); echo $time "7) EPISODE PULL (by date): "$tvdb_mirror"/api/GetEpisodeByAirDate.php?apikey=9F21AC232F30F34D&seriesid="$series_id"&airdate="$episode_date_grab" to "$episode_data >> "$logfile"
			curl $tvdb_mirror/api/GetEpisodeByAirDate.php?apikey=9F21AC232F30F34D\&seriesid=$series_id\&airdate=$episode_date > "$episode_data" 2>>/dev/null
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time "7) EPISODE PULL (by episode): "$tvdb"/series/"$series_id"/default/"$season"/"$episode"/en.xml to "$episode_data >> "$logfile"
			curl $tvdb/series/$series_id/default/$season/$episode/en.xml > "$episode_data" 2>>/dev/null
		fi
		success=$(cat "$episode_data" | grep "not found")
		if [ "$success" != "" ]
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "broken episode data, aborting" >> "$logfile"
			break
		fi
		
	
	#generate tags
		cnam=$(grep 'EpisodeName' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cart=$(grep 'SeriesName' < "$series_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cday=$(grep 'FirstAired' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		episode=$(grep 'EpisodeNumber' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		season=$(grep 'SeasonNumber' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
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
		curl http://images.thetvdb.com/banners/$cover_art_url > $resource_path/coverart.jpg 2>>/dev/null
		
		#check if video has width > 1270, if so, tag it as HD with mp4tags
		res=$(${resource_path}/mp4track --list "$1" | grep -m 1 width | awk '{print $3}' | awk -F. '{print $1}')
		if (($res>490))
		then
			hdvd="1"
		else
			hdvd="0"
		fi
		cnid=$(echo "$series_id""$season""$episode")
		
		# List tags we got, and tag using mp4tags
		time=$(date +%Y%m%d-%H%M%S); echo $time "8) PULLED TAGS Show name:"$cart "Episode number:"$episode "SeasonNumber:"$season "Episode name:"$cnam "Aired:"$cday "Description:"$desc "Stik:"$stik "tven:"$tven "tvnn:"$tvnn "cover_art_url:"$cover_art_url "hdvd":$hdvd "cnid:"$cnid >> "$logfile"	

		#Tag using mp4
		${resource_path}/mp4tags "$1" -I $cnid 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -H $hdvd 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -song "$cnam" 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -a "$cart" 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -y $cday 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -m "$desc" 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -l "$desc" 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -i tvshow 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -S "$cart" 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -M $episode 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -N $tvnn 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -n $season 1>>"$logfile" 2>>"$logfile"
		${resource_path}/mp4tags "$1" -o $tven 1>>"$logfile" 2>>"$logfile"
		
		#begin art logic
		last_covr_index=$(mp4art --list "$1" | tail -1 | awk '{print $1}')
		#if there's no covr-box, add one with pulled art
		if [ "$last_covr_index" = "----------------------------------------------------------------------" ]
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "No art yet, adding art from TheTVDB" >> "$logfile"
			art_size=$(ls -l ${resource_path}/coverart.jpg | awk '{print $5}')
			if (($art_size>999))
			then
				${resource_path}/mp4art --keepgoing --add ${resource_path}/coverart.jpg --art-index 0 "$1"
			else
				time=$(date +%Y%m%d-%H%M%S); echo $time "Art is smaller than a kilobyte, highly likely its garbage so skipping." >> "$logfile"
			fi
		#if there's more than one covr-box, remove all and add one with pulled art
		elif (($last_covr_index>0))
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "Multiple artwork on this file, removing all and adding art from TheTVDB" >> "$logfile"
			${resource_path}/mp4art --keepgoing --remove --art-any "$1"
			${resource_path}/mp4art --keepgoing --add ${resource_path}/coverart.jpg --art-index 0 "$1"
		#if there already is cover-art, cool!
		elif (($last_covr_index==0))
		then
			time=$(date +%Y%m%d-%H%M%S); echo $time "Already art on this file, skipping adding art" >> "$logfile"
		else
			time=$(date +%Y%m%d-%H%M%S); echo $time "Art parsing broken, the value for $last_cover index we got is:" $last_covr_index >> "$logfile" 
		fi
		
		# Call the applescript that will put all of this stuff into iTunes.
		time=$(date +%Y%m%d-%H%M%S); echo $time "Calling addtoitunes.scpt..." >> "$logfile"
		osascript ${resource_path}/Scripts/addtoitunes.scpt "$1" 2>> "$logfile"
	
	time=$(date +%Y%m%d-%H%M%S); echo $time Tagged $cart-$season$episode to "$1" >> "$shortlog"
	#go to next file
	shift
done
