on run filePath
	set LogFile to (do shell script "defaults read com.Breakfast.engine BreakfastLongLog")
	do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time The osascript was called... << " & (quoted form of LogFile)
	set thePath to (item 1 of filePath) as string
	tell application "iTunes"
		activate
		add (POSIX file thePath) as alias
		copy the result to theTrack
		repeat while (exists of theTrack) = false
			delay 1
		end repeat
	end tell
	# moved this from detail.sh
	# This isn't a good place to sync the iPod, because this script often finished before the detail.sh scraper, which makes
	# the sync useless. But I'm leaving this here until I figure out what to do with it.
	#osascript -e 'tell application "iTunes"' -e "repeat with s in sources" -e "if (kind of s is iPod) then update s" -e "end repeat" -e "end tell"
	#
	#
end run