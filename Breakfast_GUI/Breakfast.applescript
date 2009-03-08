-- Breakfast.applescript
-- Breakfast

--  Created by Michael Dockery on 2/24/09.
--  Copyright 2009, J. Michael Dockery. All rights reserved.

(*
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
*)

(* Globals *)
global OldFolder

(* Properties *)
property ExtensionList : missing value
property CalledByScript : missing value
property OutFolder : missing value
property EncodingOptions : missing value
property BreakfastShortLog : missing value
property BreakfastLongLog : missing value
property QueuePath : missing value
property ResourcePath : missing value
property EncodingFile : missing value
property IsEncoding : false
property StopProgressBar : false
property theCounter : missing value
property pid : missing value
property isPaused : false
property AppPath : missing value



on will finish launching theObject
	(*The event handler for the application finishing launching. We set up our user defaults here.*)
	
	(*This section creates the user defaults on the first run of the program. Otherwise it does nothing.*)
	tell user defaults
		make new default entry at end of default entries with properties {name:"ExtensionList", contents:"avi"}
		make new default entry at end of default entries with properties {name:"CalledByScript", contents:"false"}
		make new default entry at end of default entries with properties {name:"OutFolder", contents:"-"}
		make new default entry at end of default entries with properties {name:"EncodingOptions", contents:"-"}
		make new default entry at end of default entries with properties {name:"BreakfastShortLog", contents:"$HOME/Library/Logs/Breakfast.log"}
		make new default entry at end of default entries with properties {name:"BreakfastLongLog", contents:"$HOME/Library/Logs/Breakfast_debug.log"}
		make new default entry at end of default entries with properties {name:"QueuePath", contents:"missing"}
		make new default entry at end of default entries with properties {name:"AppPath", contents:"missing"}
		make new default entry at end of default entries with properties {name:"ResourcePath", contents:missing value}
		make new default entry at end of default entries with properties {name:"EncodingFile", contents:"/Users/"}
		make new default entry at end of default entries with properties {name:"TrimFileState", contents:off state}
		make new default entry at end of default entries with properties {name:"Tags.Stik", contents:10}
		
	end tell
	
	(*This section sets up our local variables using the default list.*)
	tell user defaults
		-- parse the extension list.
		set OldDelimiters to AppleScript's text item delimiters
		set AppleScript's text item delimiters to ";"
		set ExtensionList to every text item of (contents of default entry "ExtensionList" as string)
		set AppleScript's text item delimiters to OldDelimiters
		
		-- set up other variables
		set CalledByScript to (contents of default entry "CalledByScript" as boolean)
		set OutFolder to contents of default entry "OutFolder"
		set EncodingOptions to contents of default entry "EncodingOptions"
		set BreakfastShortLog to contents of default entry "BreakfastShortLog"
		set BreakfastLongLog to contents of default entry "BreakfastLongLog"
		set OldFolder to OutFolder
		
		-- EncodingFile is quoted in order to be placed in User Defaults. Take out the quotes.
		set EncodingFile to (contents of default entry "EncodingFile" as string)
		set OldDelimiters to AppleScript's text item delimiters
		set AppleScript's text item delimiters to "'"
		set itemList to every text item of EncodingFile
		set AppleScript's text item delimiters to OldDelimiters
		set EncodingFile to the itemList as string
	end tell
	
	-- Get the path names for queue.txt, engine.sh, and the general resource path
	(*tell main bundle
		set QueuePath to path for resource "queue" extension "txt"
		set EnginePath to path for resource "engine" extension "sh"
		set ResourcePath to resource path
	end tell*)
	
end will finish launching

on launched theObject
	(*The event handler that is called after the app finished launching.*)
	
	(* If the app was called by the user, we set up preferences. If the app was called
				from the watcher script, we do the deal *)
	
	if CalledByScript = false then
		-- Trying something else...
		(*set QueuePath to (POSIX path of (path to me)) & "Contents/Resources/queue.txt"
		set EnginePath to (POSIX path of (path to me)) & "Contents/Resources/engine.sh"
		set ResourcePath to (POSIX path of (path to me)) & "Contents/Resources"*)
		
		tell main bundle
			set QueuePath to path for resource "queue" extension "txt"
			set ResourcePath to resource path
			set AppPath to (path to me)
		end tell
		
		-- Show the preference window
		set visible of window "PrefWindow" to true
		set content of text field "outFolderText" of window "PrefWindow" to OutFolder
	end if
	
	if CalledByScript = true then
		try
			-- Trying something else
			tell user defaults
				set ResourcePath to contents of default entry "ResourcePath"
				set QueuePath to contents of default entry "QueuePath"
				set AppPath to contents of default entry "AppPath"
			end tell
			-- Make the status window visible.
			set visible of window "ProgressWindow" to true
			
			-- Show the status window.
			show window "ProgressWindow"
			
			-- Set up threaded animation of the progress bar. 
			tell window "ProgressWindow"
				set uses threaded animation of progress indicator "ProgressBar" to true
			end tell
			
			--Tell the program we're about to start encoding
			set IsEncoding to true
			
			-- Let's do this.
			do shell script ResourcePath & "/engine.sh &> /dev/null & echo $!"
			
			
		on error ErrorMessage number ErrorNumber
			do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & ErrorMessage & " >> " & BreakfastLongLog
			tell application "Finder"
				activate
				display dialog ErrorMessage buttons {"Cancel"} default button 1 giving up after 120
			end tell
		end try
	end if
end launched

on clicked theObject
	(*The event handler that is called whenever any button is clicked.*)
	
	(* Buttons for the Preferences Window *)
	
	-- If the user clicks on the Choose Path button...
	if name of theObject is "choosePathButton" then
		-- Save the previous folder so we can reset if the user wants to later.
		set OldFolder to OutFolder
		-- Ask the user for a folder.
		set OutFolder to choose folder with prompt "Choose a folder:"
		-- Display that folder.
		set content of text field "outFolderText" of window of theObject to OutFolder
	end if
	
	-- If the resetPathButton was clicked...
	if name of theObject is "resetPathButton" then
		tell user defaults
			-- Set the folder back to what it was.
			set OutFolder to OldFolder
			-- Display the folder.
			set content of text field "outFolderText" of window of theObject to OutFolder
		end tell
	end if
	
	-- If the user clicks on the Save Path button, save the displayed folder to the User Defaults.
	if name of theObject is "savePathButton" then
		tell user defaults
			set contents of default entry "OutFolder" to OutFolder
		end tell
		call method "synchronize" of object user defaults
	end if
	
	(* Buttons for the Progress Window *)
	
	-- If the user clicks on the Pause button...
	if name of theObject is "pauseEncodeButton" then
		-- Figure out the pid of the HandbrakeCLI that is running. (There should be a better way to do this...)
		set pid to (do shell script "ps ax | grep HandBrakeCLI | grep -v grep | awk '{print $1}'") as integer
		
		--Logging
		--do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time The PID was set to: " & pid & " >> " & BreakfastLongLog
		
		-- The program starts out running. If it's running when the button is clicked, we should pause.
		if (isPaused = false) then
			do shell script "kill -s STOP " & pid
			set isPaused to true
		else
			-- If the program is paused when the button is clicked, we should resume.
			do shell script "kill -s CONT " & pid
			set isPaused to false
		end if
	end if
	
	-- If the user clicks on the Stop button...
	if name of theObject is "stopEncodeButton" then
		-- Figure out the pid of the HandbrakeCLI that is running. (There should be a better way to do this...)
		set pid to (do shell script "ps ax | grep HandBrakeCLI | grep -v grep | awk '{print $1}'") as integer
		
		--Logging
		--do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time The PID was set to: " & pid & " >> " & BreakfastLongLog
		
		-- Make sure the user was serious about quitting.
		set theReply to display dialog "Really quit?" buttons {"Yes", "No"} default button 2 giving up after 5
		if button returned of theReply is "Yes" then
			do shell script "kill " & pid
		end if
		
	end if
	
end clicked

on idle theObject
	(*The handler that runs whenever nothing else is going on. There's no need to loop here - the program will
	call this handler repeatedly so long as nothing else is happening.*)
	
	(* Whenever we're idle, we update the progress bar. *)
	if IsEncoding then
		try
			-- Figure out where we're gonna be looking to get the LogFile.
			set LogFile to (the reverse of every character of EncodingFile) as string
			set x to the offset of "." in LogFile
			set LogFile to (text (x + 1) thru -1 of LogFile)
			set LogFile to (the reverse of every character of LogFile) as string
			set LogFile to ((LogFile) & ".txt")
			
			try
				-- Parse the last line of the LogFile to pull out the percentage done.
				set donePercentage to (do shell script "tail -c 74 " & quoted form of LogFile & " | sed 's/.*\\(.[0-9]\\.[0-9][0-9]\\)\\ \\%.*/\\1/' | sed 's/\\ \\([0-9]\\.[0-9][0-9]\\)/\\1/'") as number
			on error
				-- Just in case Handbrake is slow to start...
				set donePercentage to 0
			end try
			
			try
				-- Parse the last line of the LogFile to pull out the time remaining.
				set countdown to (do shell script "tail -c 74 " & quoted form of LogFile & " | sed 's/.*\\([0-9][0-9]h[0-9][0-9]m[0-9][0-9]s\\).*/\\1/'") as string
				if (offset of "h" in countdown) is not equal to 3 then
					if (offset of "m" in countdown) is not equal to 6 then
						if (offset of "s" in countdown) is not equal to 9 then
							set countdown to "--h--m--s"
						end if
					end if
				end if
			on error
				-- Just in case Handbrake is slow to start...
				set countdown to "--h--m--s"
			end try
			
			-- Check to see if we're done yet. Use 99 %, rather than 100 %, to ensure that we don't reach the end 
			-- of the LogFile, and make a mess because our expected input is wrong.
			if donePercentage = 99 then
				set IsEncoding to false
				-- If for some reason the last 1% takes some time, change to an indeterminate progress bar, and start it.
				set indeterminate of progress indicator "ProgressBar" of window "ProgressWindow" to true
				start progress indicator "ProgressBar" of window "ProgressWindow"
			end if
			
			-- Update the countdown box. Ideally, the first few lines wouldn't get screwed up as HandbrakeCLI is
			-- trying to figure out the estimated time. But for now don't worry about it.
			set content of text field "timeBox" of window "ProgressWindow" to countdown
			
			-- Cycle the progress bar using our percentage.
			set content of progress indicator "ProgressBar" of window "ProgressWindow" to donePercentage
			
			-- Update the window so that everything gets displayed.
			update window "ProgressWindow"
			
			
		on error ErrorMessage number ErrorNumber
			do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & ErrorMessage & " >> " & BreakfastLongLog
			tell application "Finder"
				activate
				display dialog ErrorMessage buttons {"Cancel"} default button 1 giving up after 120
			end tell
		end try
	end if
	-- This number is the number of seconds later the next call to the idle handler will be made (assuming nothing
	-- else happens.)
	return 0.5
end idle

on will quit theObject
	(*The program is closing. Clean up.*)
	tell user defaults
		set contents of default entry "QueuePath" to QueuePath
		set contents of default entry "EncodingFile" to the quoted form of EncodingFile
		set contents of default entry "ResourcePath" to ResourcePath
		set contents of default entry "CalledByScript" to false
		set contents of default entry "AppPath" to AppPath
	end tell
	call method "synchronize" of object user defaults
end will quit
