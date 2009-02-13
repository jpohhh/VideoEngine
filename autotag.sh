#!/bin/bash
until [ "$*" = "" ]
do
	logfile=$HOME/Library/Logs/autotag-long.log
	shortlog=$HOME/Library/Logs/autotag-short.log
	#parse filename
		first_character=$(echo $episode | cut -c 1)
		season_episode=$(basename "$1" | sed 's/\./ /g' | sed 's/.*\([Ss][0-9][0-9][Ee][0-9][0-9]\).*/\1/')
		season=$(echo $season_episode | awk -F[Ee] '{print $1}'| awk -F[Ss] '{print $2}' | sed 's/0\(**\)/\1/')
		episode=$(echo $season_episode | awk -F[Ee] '{print $2}')
			#strip first 0 of episode number
			first_character=$(echo $episode | cut -c 1)
			if [ $first_character == "0" ]
			then
				episode=$(echo $episode | cut -c 2)
			fi
		file_extension=$(basename "$1" | sed 's/\./ /g' | awk '{print $NF}')
		tv_show=$(basename "$1" | sed 's/\./ /g' | sed 's/ [Ss]..[Ee].*//')
			#strip i at front of TV show -- I use this to denote my iPhone encodes
			first_character=$(echo $tv_show | cut -c 1)
			if [ $first_character == "i" ]
			then
				length=${#tv_show}
				tv_show=$(echo $tv_show | cut -c2-$length)
			fi
		echo "+++++++++++++++++++++++++++++++" >> "$logfile"
		echo "1) RECEIVED " $1 >> "$logfile"
		echo "2) PARSED Season: "$season "Episode: "$episode "Extension: "$file_extension "TV show: "$tv_show >> "$logfile"

	#1a - generate mirror URL
		curl http://www.thetvdb.com/api/9F21AC232F30F34D/mirrors.xml > mirrors.xml 2>> /dev/null
		tvdb=$(grep 'mirrorpath' mirrors.xml | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		tvdb=$tvdb/api/9F21AC232F30F34D
		echo "3) GOT MIRROR URL: "$tvdb >> "$logfile"
		rm mirrors.xml

	#2 - get last update time
		curl $tvdb/updates > updates.xml 2>> /dev/null
		previoustime=$(grep 'Data time' updates.xml | awk -F\< '{print $2}' | awk -F\= '{print $2}' | awk -F\" '{print $2}')
		echo "4) PREVIOUS_TIME: "$previoustime >> "$logfile"
		rm updates.xml 

	#3 - pull series info from TVDB
		tv_show=$(echo $tv_show | sed 's/ /%20/g')
		echo "5) SERIES REQUEST" http://www.thetvdb.com/api/GetSeries.php?seriesname=$tv_show >> "$logfile"
		series_id=$(curl http://www.thetvdb.com/api/GetSeries.php?seriesname=$tv_show | grep -m 1 "seriesid" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		series_data=$HOME/Library/Application\ Support/Engine/$series_id.xml
		echo "6) RECEIVED: "$tvdb/series/$series_id/en.xml to "$series_data" >> "$logfile"
		curl $tvdb/series/$series_id/en.xml > "$series_data" 2>>/dev/null

	#4 - pull episode in from from TVDB
		episode_data=$HOME/Library/Application\ Support/Engine/episode.xml
		echo "7) EPISODE PULL: "$tvdb/series/$series_id/default/$season/$episode/en.xml to "$episode_data" >> "$logfile"
		curl $tvdb/series/$series_id/default/$season/$episode/en.xml > "$episode_data" 2>>/dev/null
		
	
	#generate tags and tag with AtomicParsley
		cnam=$(grep 'EpisodeName' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cart=$(grep 'SeriesName' < "$series_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		cday=$(grep 'FirstAired' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		# can't set content rating
		# can't set genre
		desc=$(grep 'Overview' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		stik=$(echo 10)
		# can't write actors, directors, writers
		# tvsh = cnam
		tven=$(grep 'ProductionCode' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		
		#some episodes don't have an episode ID, if there isn't one just make the the same as the episode number
		if [ "$tven" = "" ]
		then
			tven=$episode
		fi

		tvnn=$(grep 'Network' < "$series_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		tvsn=$season
		tves=$episode
		cover_art_url=$(grep 'filename' < "$episode_data" | awk -F\< '{print $2}' | awk -F\> '{print $2}')
		curl http://images.thetvdb.com/banners/$cover_art_url > $HOME/Library/Application\ Support/Engine/coverart.jpg 2>>/dev/null

		echo "7) PULLED TAGS Show name:"$cart "Episode name:"$cnam "Aired:"$cday "Description:"$desc "Stik:"$stik "tven:"$tven "tvnn:"$tvnn "cover_art_url:"$cover_art_url >> "$logfile"
		#check if video has width > 1270, if so, tag it as HD with mp4tags
		res=$(mp4track --list "$1" | grep -m 1 width | awk '{print $3}' | awk -F. '{print $1}')
		if (($res>1270))
		then
			hdvd="1"
		else
			hdvd="0"
		fi

		mp4tags "$1" -H $hdvd -song "$cnam" -a "$cart" -y $cday -m "$desc" -l "$desc" -i tvshow -S "$cart" -M $episode -N $tvnn -n $season -o $tven
		mp4art --art-any --keepgoing --remove "$1"
		mp4art --add $HOME/Library/Application\ Support/Engine/coverart.jpg "$1"
		
		rm "$series_data"
		rm $HOME/Library/Application\ Support/Engine/coverart.jpg
		rm $HOME/Library/Application\ Support/Engine/episode.xml
	
	
	echo $(date) $(basename "$1") $cart-$season$episode >> "$shortlog"
	echo >> "$logfile"
	#go to next file
	shift
done
