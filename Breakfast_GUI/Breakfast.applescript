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

(* Properties *)
property CalledByScript : missing value
property ExtensionList : missing value
property OldExtensionList : missing value
property OutFolder : missing value
property OldOutFolder : missing value
property WatchFolder : "-"
property OldWatchFolder : "-"
property EncodingOptions : missing value
property OldEncodingOptions : missing value
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
property countdown : "--h--m--s"
property donePercentage : 0
property watcherScript : missing value
property SaveButtonState : off state


on will finish launching theObject
	(*The event handler for the application finishing launching. We set up our user defaults here.*)
	
	(*This section creates the user defaults on the first run of the program. Otherwise it does nothing.*)
	tell user defaults
		make new default entry at end of default entries with properties {name:"ExtensionList", contents:"avi"}
		make new default entry at end of default entries with properties {name:"CalledByScript", contents:"false"}
		make new default entry at end of default entries with properties {name:"OutFolder", contents:"-"}
		make new default entry at end of default entries with properties {name:"WatchFolder", contents:"-"}
		make new default entry at end of default entries with properties {name:"EncodingOptions", contents:"-"}
		make new default entry at end of default entries with properties {name:"BreakfastShortLog", contents:"$HOME/Library/Logs/Breakfast.log"}
		make new default entry at end of default entries with properties {name:"BreakfastLongLog", contents:"$HOME/Library/Logs/Breakfast_debug.log"}
		make new default entry at end of default entries with properties {name:"QueuePath", contents:"missing"}
		make new default entry at end of default entries with properties {name:"AppPath", contents:"missing"}
		make new default entry at end of default entries with properties {name:"ResourcePath", contents:missing value}
		make new default entry at end of default entries with properties {name:"TrimFileState", contents:off state}
		make new default entry at end of default entries with properties {name:"Tags.Stik", contents:10}
	end tell
	
	(*This section sets up our local variables using the default list.*)
	tell user defaults
		set CalledByScript to (contents of default entry "CalledByScript" as boolean)
		set ExtensionList to contents of default entry "ExtensionList"
		set OldExtensionList to ExtensionList
		set OutFolder to contents of default entry "OutFolder"
		set OldOutFolder to OutFolder
		set WatchFolder to contents of default entry "WatchFolder"
		set OldWatchFolder to WatchFolder
		set EncodingOptions to contents of default entry "EncodingOptions"
		set OldEncodingOptions to EncodingOptions
		set BreakfastShortLog to contents of default entry "BreakfastShortLog"
		set BreakfastLongLog to contents of default entry "BreakfastLongLog"
		set EncodingFile to "Preparing..."
		
		
	end tell
	
end will finish launching

on awake from nib theObject
	(*This handler is called during launch, when the app is being unpacked from its nib.*)
	
	-- Get the path names for queue.txt, engine.sh, and the general resource path
	tell main bundle
		set QueuePath to path for resource "queue" extension "txt"
		set EnginePath to path for resource "engine" extension "sh"
		set watcherScript to path for resource "convert - video to iTunes (Breakfast)" extension "scpt"
		set ResourcePath to resource path
	end tell
	
	set AppPath to POSIX path of (path to me) as string
	(* If the app was called by the user, we set up preferences. If the app was called
				from the watcher script, we do the deal *)
	
	if CalledByScript = false then
		
		-- Show the preference window
		set visible of window "PrefWindow" to true
		set content of text field "outFolderText" of window "PrefWindow" to OutFolder
		set content of text field "ExListText" of window "PrefWindow" to ExtensionList
		set content of text field "encodeOptions" of window "PrefWindow" to EncodingOptions
		set content of text field "WatchFolderText" of window "PrefWindow" to WatchFolder
	end if
	
	if CalledByScript = true then
		try
			-- Hide the unneeded menus.
			set menuItem to second menu item of main menu
			set saveMenu to first menu item of sub menu of menuItem
			set resetMenu to second menu item of sub menu of menuItem
			
			set enabled of saveMenu to false
			set enabled of resetMenu to false
			
			-- Make the progress window visible.
			set visible of window "ProgressWindow" to true
			
			-- Show the status window.
			show window "ProgressWindow"
			
			-- Set up threaded animation of the progress bar. 
			tell window "ProgressWindow"
				set uses threaded animation of progress indicator "ProgressBar" to true
				-- Set contents of the EncodeFileText text field to a known temporary value (we set this above
				-- so that we'll know later whether the engine.sh has updated it.
				set content of text field "EncodeFileText" to EncodingFile
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
	
end awake from nib

on clicked theObject
	(*The event handler that is called whenever any button is clicked.*)
	
	(* Buttons for the Preferences Window *)
	
	-- If the user clicks on the Choose Path button...
	if name of theObject is "choosePathButton" then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		-- Save the previous folder so we can reset if the user wants to later.
		set OldOutFolder to OutFolder
		-- Ask the user for a folder.
		set OutFolder to choose folder with prompt "Choose a folder:"
		-- Display that folder.
		set content of text field "outFolderText" of window of theObject to OutFolder
	end if
	
	if name of theObject is "chooseWatchButton" then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		-- Save the previous folder so we can reset if the user wants to later.
		set OldWatchFolder to WatchFolder
		-- Ask the user for a folder.
		set WatchFolder to choose folder with prompt "Choose a folder:"
		-- Display that folder.
		set content of text field "WatchFolderText" of window of theObject to WatchFolder
	end if
	
	-- If the resetPathButton was clicked...
	if name of theObject is "resetButton" then
		-- Set the variables back to what they were.
		set OutFolder to OldOutFolder
		set WatchFolder to OldWatchFolder
		set EncodingOptions to OldEncodingOptions
		set ExtensionList to OldExtensionList
		-- Display the variables in their text fields.
		set content of text field "outFolderText" of window "PrefWindow" to OutFolder
		set content of text field "WatchFolderText" of window "PrefWindow" to WatchFolder
		set content of text field "ExListText" of window "PrefWindow" to ExtensionList
		set content of text field "encodeOptions" of window "PrefWindow" to EncodingOptions
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
	end if
	
	-- If the user clicks on the Save button, save the variables to the User Defaults. 
	if name of theObject is "saveButton" then
		set OutFolder to content of text field "outFolderText" of window "PrefWindow"
		set WatchFolder to content of text field "WatchFolderText" of window "PrefWindow"
		set ExtensionList to content of text field "ExListText" of window "PrefWindow"
		set EncodingOptions to content of text field "encodeOptions" of window "PrefWindow"
		
		-- If the user has specified a new watching folder, set that up.
		if OldWatchFolder is not equal to WatchFolder then
			-- See if our watcher script has been copied to the Folder Actions folder already.
			set thePath to "file://localhost/Library/Scripts/Folder%20Action%20Scripts/"
			set theWatcherScript to thePath & "convert%20-%20video%20to%20iTunes%20(Breakfast).scpt"
			if (theWatcherScript exists) is not equal to true then
				do shell script "cp " & quoted form of watcherScript & " file://localhost/Library/Scripts/Folder%20Action%20Scripts/"
				do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time BREAKFAST_SAVE button: Folder Action not found. Copying. >> " & BreakfastLongLog
			end if
			
			-- Remove the script from the OldWatchFolder. 
			-- First, make sure that there was an OldWatchFolder (there won't be on first run.)
			if OldWatchFolder is not equal to "-" then
				tell application "System Events"
					set theAlias to alias OldWatchFolder
					set theName to name of theAlias
					try
						set theList to attached scripts OldWatchFolder
					end try
					try
						set numberofitems to number of items of theList
					on error
						-- there are no attached scripts
						set numberofitems to 0
					end try
					try
						tell folder action theName
							set theScripts to scripts
						end tell
					end try
					if numberofitems > 0 then
						set i to 1
						repeat until i > numberofitems
							if (name of item i of theScripts) = "convert - video to iTunes (Breakfast).scpt" then
								remove action from OldWatchFolder using action name "convert - video to iTunes (Breakfast).scpt"
							end if
							set i to i + 1
						end repeat
					end if
				end tell
			end if
			
			-- Add the script to the new watch folder.
			-- First, if it's already there just pull it off.
			tell application "System Events"
				set theAlias to alias WatchFolder
				set theName to name of theAlias
				set theList to attached scripts WatchFolder
				try
					set numberofitems to number of items of theList
				on error
					-- there are no attached scripts
					set numberofitems to 0
				end try
				try
					tell folder action theName
						set theScripts to scripts
					end tell
				end try
				if numberofitems > 0 then
					set i to 1
					repeat until i > numberofitems
						if (name of item i of theScripts) = "convert - video to iTunes (Breakfast).scpt" then
							remove action from WatchFolder using action name "convert - video to iTunes (Breakfast).scpt"
						end if
						set i to i + 1
					end repeat
				end if
			end tell
			
			-- Now, add it.
			tell application "System Events"
				make new folder action at the end of folder actions with properties {path:(WatchFolder as text)}
				tell folder action theName
					make new script at the end of scripts with properties {name:"convert - video to iTunes (Breakfast).scpt"}
				end tell
			end tell
			
			tell user defaults
				set contents of default entry "OutFolder" to OutFolder
				set contents of default entry "EncodingOptions" to EncodingOptions
				set contents of default entry "ExtensionList" to ExtensionList
				set contents of default entry "WatchFolder" to WatchFolder
			end tell
			call method "synchronize" of object user defaults
			
		end if
		
		set (state of button "saveButton" of window "PrefWindow") to on state
		set (enabled of button "saveButton" of window "PrefWindow") to false
		set OldOutFolder to OutFolder
		set OldWatchFolder to WatchFolder
		set OldEncodingOptions to EncodingOptions
		set OldExtensionList to ExtensionList
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

on choose menu item theObject
	(*The handler that is called when a User chooses a menu item.*)
	if name of theObject is "pullDown" then
		set EncodingOptions to title of popup button "pullDown" of window "PrefWindow"
		set encodeTemp to "-Z '" & EncodingOptions & "'"
		set content of text field "EncodeOptions" of window "PrefWindow" to encodeTemp
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
	end if
end choose menu item

on changed theObject
	(*This handler is called when a user tries to begin editing, but before the edit is allowed to happen.*)
	if (name of theObject is "OutFolderText") then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		return true
	end if
	
	if (name of theObject is "WatchFolderText") then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		return true
	end if
	
	if (name of theObject is "ExListText") then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		return true
	end if
	
	if (name of theObject is "encodeOptions") then
		-- If the save button has been pressed, unpress it.
		if (state of button "saveButton" of window "PrefWindow") = 1 then
			set (state of button "saveButton" of window "PrefWindow") to 0
			set (enabled of button "saveButton" of window "PrefWindow") to true
		end if
		return true
	end if
end changed

on idle theObject
	(*The handler that runs whenever nothing else is going on. There's no need to loop here - the program will
	call this handler repeatedly so long as nothing else is happening.*)
	
	-- Whenever we're idle, we update the progress bar.
	-- First, make sure we're supposed to be encoding (if we're in Preferences mode, no reason to waste
	-- processor cycles doing all of this stuff...)
	if IsEncoding then
		try
			
			-- The basic process for getting the encoding file is: 
			-- 1) Set a known temporary string to the text field ("Processing...")
			-- 2) Run engine.sh - eventually, it will use osascript to change the text field
			--      to the file it is currently encoding. 
			-- 3) Once that has happened, we pull the content of the text field (which will now
			-- 4)   be the file that engine.sh is encoding, do some processing to figure out
			-- 5)   its .txt equivilent (which is the logfile), and then do what we need to do.
			
			-- First, get the content of the text field.
			set EncodingFile to content of text field "EncodeFileText" of window "ProgressWindow"
			-- If it's still our temporary placeholder string, don't do anything.
			if EncodingFile is not equal to "Preparing..." then
				
				-- Figure out where we're gonna be looking to get the LogFile.
				set LogFile to (the reverse of every character of EncodingFile) as string
				set x to the offset of "." in LogFile
				set LogFile to (text (x + 1) thru -1 of LogFile)
				set LogFile to (the reverse of every character of LogFile) as string
				set LogFile to ((LogFile) & ".txt")
				
				-- Parse the last line of the LogFile to pull out the percentage done.
				try
					set donePercentage to (do shell script "tail -c 74 " & quoted form of LogFile & " | sed 's/.*\\(.[0-9]\\.[0-9][0-9]\\)\\ \\%.*/\\1/' | sed 's/\\ \\([0-9]\\.[0-9][0-9]\\)/\\1/'") as number
				end try
				
				-- Parse the last line of the LogFile to pull out the time remaining.
				try
					set countdown to (do shell script "tail -c 74 " & quoted form of LogFile & " | sed 's/.*\\([0-9][0-9]h[0-9][0-9]m[0-9][0-9]s\\).*/\\1/'") as string
					-- Do some complicated checks to make sure we've got what we want.
					-- (These are done because HandbrakeCLI's output is different before it calculates the time
					-- remaining.)
					if (offset of "h" in countdown) is not equal to 3 then
						if (offset of "m" in countdown) is not equal to 6 then
							if (offset of "s" in countdown) is not equal to 9 then
								set countdown to "--h--m--s"
							end if
						end if
					end if
				end try
			end if
			
			-- Check to see if we're done yet. Use 99 %, rather than 100 %, to ensure that we don't reach the end 
			-- of the LogFile, and make a mess because our expected input from HandbrakeCLI is wrong.
			if donePercentage = 99 then
				set IsEncoding to false
				-- If for some reason the last 1% takes some time, change to an indeterminate progress bar, and start it.
				set indeterminate of progress indicator "ProgressBar" of window "ProgressWindow" to true
				start progress indicator "ProgressBar" of window "ProgressWindow"
			end if
			
			-- Update the countdown box text field and the Encoding File text field.
			set content of text field "timeBox" of window "ProgressWindow" to countdown
			set content of text field "EncodeFileText" of window "ProgressWindow" to EncodingFile
			
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
	-- else happens. 1 is sufficient.)
	return 1
end idle

on will quit theObject
	(*The program is closing. Clean up.*)
	tell user defaults
		set contents of default entry "QueuePath" to QueuePath
		set contents of default entry "ResourcePath" to ResourcePath
		set contents of default entry "CalledByScript" to false
		set contents of default entry "AppPath" to AppPath
	end tell
	call method "synchronize" of object user defaults
end will quit
