--   This file is part of Engine.
--
--   Engine is free software: you can redistribute it and/or modify
--   it under the terms of the GNU General Public License as published by
--   the Free Software Foundation, either version 2 of the License, or
--   (at your option) any later version.
--
--   Engine is distributed in the hope that it will be useful,
--   but WITHOUT ANY WARRANTY; without even the implied warranty of
--   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--   GNU General Public License for more details.
--
--   You should have received a copy of the GNU General Public License
--   along with Engine.  If not, see <http://www.gnu.org/licenses/>.
-- 
--   The initial developer of the original code is James O'Leary.
--   Portions created by James O'Leary are copyright (C) 2009.
--   All rights reserved.
--
--  Contributors:
--      James O'Leary, jpo@me.com
--  TODO FOR YOUR PERSONAL USE: attach this as a folder action to the folder you want to watch, change the extension_list to include whatever file extensions you want to be passed to Handbrake, change out_folder to be the folder you want the encode and log to be in
property extension_list : {"mkv", "avi"}
property out_folder : "/Volumes/1000/Conversions/Untagged/Dropbox/"
# property encoding_options : "-f mp4 -4 -e x264 -x bframes=3:ref=3:me=hex:b-adapt=2:subme=7:mixed-refs=1:8x8dct=1 -q 0.55 -E ca_aac,ac3 -B 128 -6 dpl2 -l 0:0:0:0"
property do_second_encode : "no"
# property second_encoding_options : "-f mp4 -4 -e x264 -x level=30:cabac=0:bframes=0:ref=2:mixed-refs=1:me=hex:subme=5 -q 0.45 -E ca_aac -B 80 -6 dpl2 --width 480"
# ONLY CHANGE THESE FOR TESTING
property encoding_options : "-f mp4 -4 -e x264 -x bframes=0:ref=1:me=dia:subme=0:cabac=0 -q 0.01 -E faac -B 128 -6 dpl2 --width 480"
property second_encoding_options : "-f mp4 -4 -e x264 -x bframes=0:ref=1:me=dia:subme=0 -q 0.01 -E faac,ac3 -B 128 -6 dpl2"
property engine_directory : "$HOME/Library/Application\\ Support/Engine/"
property engine_shortlog : "$HOME/Library/Logs/Engine.log"
property engine_longlog : "$HOME/Library/Logs/Engine_debug.log"

on adding folder items to this_folder after receiving added_items
	try
		--log that an event occured to trigger this script
		do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & (number of items of added_items) & " items added >> " & engine_shortlog
		--iterate through all the files added to this folder
		set i to 1
		repeat until i > the (number of items of added_items)
			set this_item to item i of added_items
			set the item_info to the info for this_item
			--log that we're processing the current item
			do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PROCESSING " & the quoted form of the POSIX path of this_item & " >> " & engine_longlog
			
			--check to make sure the item has finished moving before we start processing
			set oldSize to size of item_info
			delay 3
			set newSize to size of item_info
			repeat while newSize is not equal to oldSize
				do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Throttling processing until moving has settled. >> " & engine_longlog
				-- Get the file size.
				set oldSize to size of item_info
				delay 3
				-- Sample the size again after delay for comparison.
				set newSize to size of item_info
			end repeat
			
			--Check if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array
			if (the kind of the item_info is "Folder") then
				do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time This is a folder, so check what\\'s inside >> " & engine_longlog
				tell application "Finder"
					set item_number to the number of items in folder this_item
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Number of items in folder? " & item_number & " >> " & engine_longlog
					repeat with j from 1 to item_number
						set folder_item to item j in folder this_item
						set added_items to added_items & (folder_item as alias)
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Added " & the quoted form of the POSIX path of (folder_item as alias) & " >> " & engine_longlog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Now there are " & number of items in added_items & " items in added_items >> " & engine_longlog
					end repeat
				end tell
			end if
			
			--check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)
			tell application "Finder"
				--check if the label is green for the file
				if (the label index of this_item) as integer is not 6 then
					--log that we passed the color filter
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PASSED label color filter >> " & engine_longlog
					--check if the file has one of our desired extensions
					if (the name extension of the item_info is in the extension_list) then
						--log that we passed the extension filter
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time PASSED extension filter >> " & engine_longlog
						
						--need some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes
						set do_encode to 1
						
						--generate input path, and log it
						set sourcename to the quoted form of the POSIX path of this_item
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Source file: " & sourcename & " >> " & engine_longlog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time File passed filters, " & sourcename & " is being queued >> " & engine_shortlog
						
						--generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end
						-- generate a log output path similarly (txt at end)
						set out_filename to (the reverse of every character of the name of the item_info) as string
						set x to the offset of "." in out_filename
						set out_filename to (text (x + 1) thru -1 of out_filename)
						set out_filename to (the reverse of every character of out_filename) as string
						set out_logname to the quoted form of ((out_folder) & (out_filename) & ".txt")
						set output_path to the quoted form of ((out_folder) & (out_filename) & ".m4v")
						
						--log the encode output and the log output paths
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Encode going to: " & output_path & " >> " & engine_longlog
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Log going to: " & out_logname & " >> " & engine_longlog
						
						--color the file we're about to convert green so the script recognizes it as processed later
						tell application "Finder"
							set label index of item this_item to 6
						end tell
					else
						--we didn't pass the extension filter, signal the encode code to be blocked and log the failure
						set do_encode to 0
						do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time FAILED extension filter >> " & engine_longlog
					end if
				else
					--we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure
					set do_encode to 0
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time FAILED label color >> " & engine_longlog
				end if
			end tell
			
			--check if we're supposed to encode
			if do_encode = 1 then
				--dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field
				do shell script "echo " & sourcename & "\\;" & output_path & "\\;" & encoding_options & "\\;" & out_logname & " >> $HOME/Library/Application\\ Support/Engine/queue.txt"
				--if the second_encode parameter is true, queue another items with the second encoding options
				if do_second_encode = "yes" then
					set output_path to the quoted form of ((out_folder) & (out_filename) & "-secondencode.m4v")
					set out_logname to the quoted form of ((out_folder) & (out_filename) & "-secondencode.txt")
					do shell script "echo " & sourcename & "\\;" & output_path & "\\;" & second_encoding_options & "\\;" & out_logname & " >> $HOME/Library/Application\\ Support/Engine/queue.txt"
				end if
				
				set isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"
				-- isHandbrakeRunning returns the number of HandBrakeCLI processes running
				if isHandbrakeRunning is equal to "0" then
					--we're not currently encoding, log it, give the encoding script a kick in the arse
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & isHandbrakeRunning & " instances reporting running, so asking encoder to start... >> " & engine_longlog
					do shell script "cd " & engine_directory & "; ./engine.sh &> /dev/null &"
				else
					--already encoding, quietly log this
					do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & isHandbrakeRunning & " instances reporting running, so not asking encoder to start... >> " & engine_longlog
				end if
			end if
			
			--note for the loop that we passed through index 1 of the added files
			set i to i + 1
		end repeat
		do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time Exited repeat loop, all files should be handled >> " & engine_longlog
		
		--handle errors
	on error error_message number error_number
		do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time " & error_message & " >> " & engine_longlog
		tell application "Finder"
			activate
			display dialog error_message buttons {"Cancel"} default button 1 giving up after 120
		end tell
	end try
end adding folder items to
