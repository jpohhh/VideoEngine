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
end run