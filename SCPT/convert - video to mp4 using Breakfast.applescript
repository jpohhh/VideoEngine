property BreakfastShortLog : missing value
property BreakfastLongLog : missing value
property ExtensionList : missing value
property CalledByScript : missing value
property OutFolder : missing value
property WatchFolder : missing value
property addedItems : missing value
property EncodingOptions : missing value
property QueuePath : missing value
property ResourcePath : missing value
property AppPath : missing value
property UseGUI : missing value
property BreakfastIsWatching : false



on adding folder items to thisFolder after receiving addedItems
	set AppleScript's text item delimiters to {""}
	-- Get our properties from the user defaults. Get the logs first.
	set BreakfastShortLog to (do shell script "defaults read com.Breakfast.engine BreakfastShortLog")
	set BreakfastLongLog to (do shell script "defaults read com.Breakfast.engine BreakfastLongLog")
	set AppPath to (do shell script "defaults read com.Breakfast.engine AppPath")
	set ResourcePath to (do shell script "defaults read com.Breakfast.engine ResourcePath")
	set UseGUI to ((do shell script "defaults read com.Breakfast.engine UsingGUI") as number) as boolean
	do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time FOLDER_ACTION The variable UseGUI: " & UseGUI & " >> " & BreakfastLongLog
	
	-- First we go after the extensions, because they're the most complicated.
	set ExtensionTemp to (do shell script "defaults read com.Breakfast.engine ExtensionList")
	set oldDelimiters to AppleScript's text item delimiters
	set AppleScript's text item delimiters to ";"
	copy text items of ExtensionTemp to ExtensionList
	set AppleScript's text item delimiters to oldDelimiters
	-- Log Extension List
	-- do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time We will be looking for EXTENSIONS: " & (item 1 of ExtensionList) & " as well as " & (item 2 of ExtensionList) & " >> " & BreakfastLongLog
	
	-- Now the rest of the properties...
	set OutFolder to (do shell script "defaults read com.Breakfast.engine OutFolder") & "/"
	set EncodingOptions to (do shell script "defaults read com.breakfast.engine EncodingOptions")
	set QueuePath to (do shell script "defaults read com.Breakfast.engine QueuePath")
	
	-- Now we set our own default to let the app know we want it to do the deal. 
	do shell script "defaults write com.Breakfast.engine CalledByScript -boolean 'yes'"
	
	
	try
		
		--log that an event occured to trigger this script
		do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & (number of items of addedItems) & " items added >> " & BreakfastShortLog
		--iterate through all the files added to this folder
		set i to 1
		repeat until i > the (number of items of addedItems)
			set ThisItem to item i of addedItems
			set the ItemInfo to the info for ThisItem
			--log that we're processing the current item
			do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PROCESSING " & the quoted form of the POSIX path of ThisItem & " as well as " & the name of ItemInfo as string & " >> " & BreakfastLongLog
			
			--check to make sure the item has finished moving before we start processing
			set oldSize to size of ItemInfo
			delay 3
			set newSize to size of ItemInfo
			repeat while newSize is not equal to oldSize
				do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Throttling processing until moving has settled. >> " & BreakfastLongLog
				-- Get the file size.
				set oldSize to size of ItemInfo
				delay 3
				-- Sample the size again after delay for comparison.
				set newSize to size of ItemInfo
			end repeat
			
			--Check if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array
			if (the kind of the ItemInfo is "Folder") then
				do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time This is a folder, so check what\\'s inside >> " & BreakfastLongLog
				tell application "Finder"
					set ItemNumber to the number of items in folder ThisItem
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Number of items in folder? " & ItemNumber & " >> " & BreakfastLongLog
					repeat with j from 1 to ItemNumber
						set FolderItem to item j in folder ThisItem
						set addedItems to addedItems & (FolderItem as alias)
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Added " & the quoted form of the POSIX path of (FolderItem as alias) & " >> " & BreakfastLongLog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Now there are " & number of items in addedItems & " items in added_items >> " & BreakfastLongLog
					end repeat
				end tell
			end if
			
			--check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)
			tell application "Finder"
				--check if the label is green for the file
				if (the label index of ThisItem) as integer is not 6 then
					--log that we passed the color filter
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PASSED label color filter >> " & BreakfastLongLog
					--check if the file has one of our desired extensions
					if (the name extension of the ItemInfo is in the ExtensionList) then
						--log that we passed the extension filter
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PASSED extension filter >> " & BreakfastLongLog
						
						--need some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes
						set DoEncode to 1
						
						--generate input path, and log it
						set sourcename to the quoted form of the POSIX path of ThisItem
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Source file: " & sourcename & " >> " & BreakfastLongLog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time File passed filters, " & sourcename & " is being queued >> " & BreakfastShortLog
						
						--generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end
						-- generate a log output path similarly (txt at end)
						set OutFilename to (the reverse of every character of the name of the ItemInfo) as string
						set x to the offset of "." in OutFilename
						set OutFilename to (text (x + 1) thru -1 of OutFilename)
						set OutFilename to (the reverse of every character of OutFilename) as string
						set OutLogname to the quoted form of ((OutFolder) & (OutFilename) & ".txt")
						set OutputPath to the quoted form of ((OutFolder) & (OutFilename) & ".m4v")
						
						--log the encode output and the log output paths
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Encode going to: " & OutputPath & " >> " & BreakfastLongLog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Log going to: " & OutLogname & " >> " & BreakfastLongLog
						
						--color the file we're about to convert green so the script recognizes it as processed later
						tell application "Finder"
							set label index of item ThisItem to 6
						end tell
					else
						--we didn't pass the extension filter, signal the encode code to be blocked and log the failure
						set DoEncode to 0
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time FAILED extension filter >> " & BreakfastLongLog
					end if
				else
					--we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure
					set DoEncode to 0
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time FAILED label color >> " & BreakfastLongLog
				end if
			end tell
			
			--check if we're supposed to encode
			if DoEncode = 1 then
				--dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field
				do shell script "echo " & sourcename & "\\;" & OutputPath & "\\;" & EncodingOptions & "\\;" & OutLogname & " >> " & QueuePath
				
				set isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"
				
				-- isHandbrakeRunning returns the number of HandBrakeCLI processes running
				if isHandbrakeRunning is equal to "0" then
					--we're not currently encoding, log it, give the encoding script a kick in the arse
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & isHandbrakeRunning & " instances reporting running, so asking encoder to start... >> " & BreakfastLongLog
					do shell script "cd " & ResourcePath & "; ./engine.sh &> /dev/null &"
					
					-- See if the user is using the GUI
					if UseGUI then
						-- If the app is already running, it will take care of itself. If it's not running, we need to kick it
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Entered UseGUI block... >> " & BreakfastLongLog
						if application AppPath is not running then
							do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Entered Breakfast is not running block... >> " & BreakfastLongLog
							tell application AppPath
								run
								activate
								-- We also need to tell it to hide the Preferences Window.
								set visible of window "PrefWindow" to false
							end tell
						end if
					end if
				else
					--already encoding, quietly log this
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & isHandbrakeRunning & " instances reporting running, so not asking encoder to start... >> " & BreakfastLongLog
				end if
			end if
			
			--note for the loop that we passed through one index of the added files
			set i to i + 1
		end repeat
		do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Exited repeat loop, all files should be handled >> " & BreakfastLongLog
	end try
end adding folder items to