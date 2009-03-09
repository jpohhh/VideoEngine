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

on run filePath
	-- set logFile to (do shell script "defaults read com.Breakfast.engine BreakfastLongLog")
	-- do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time The osascript was called... << " & (quoted form of logFile)
	set thePath to (item 1 of filePath) as string
	tell application "iTunes"
		activate
		add (POSIX file thePath) as alias
		copy the result to theTrack
		repeat while (exists of theTrack) = false
			delay 1
		end repeat
		
		-- First construct a track name.
		if ((do shell script "defaults read com.Breakfast.engine Tags.Season") as integer) < 10 then
			set longSeason to "0" & ((do shell script "defaults read com.Breakfast.engine Tags.Season") as text)
		else
			set longSeason to ((do shell script "defaults read com.Breakfast.engine Tags.Season") as text)
		end if
		
		if ((do shell script "defaults read com.Breakfast.engine Tags.Episode") as integer) < 10 then
			set longEpisode to "0" & ((do shell script "defaults read com.Breakfast.engine Tags.Episode") as text)
		else
			set longEpisode to ((do shell script "defaults read com.Breakfast.engine Tags.Episode") as text)
		end if
		-- (We'll put all this together after we get the show name.)
		
		
		-- get the show name, episode name, tvnn and description from files created by the scraper... (can't use the defaults system because data is unpredictably formatted)
		-- figure out where the files are.
		set resourcePath to (do shell script "defaults read com.Breakfast.engine ResourcePath")
		-- construct the paths.
		set showNamePath to resourcePath & "/showname"
		set namePath to resourcePath & "/episodename"
		set descPath to resourcePath & "/episodedesc"
		set tvnnPath to resourcePath & "/tvnn"
		-- pull in the info.
		set showName to (do shell script "cat '" & showNamePath & "'")
		set episodeName to (do shell script "cat '" & namePath & "'")
		set episodeDescription to (do shell script "cat '" & descPath & "'")
		set tvnn to (do shell script "cat '" & tvnnPath & "'")
		-- make a description out of some of the tags that iTunes doesn't support.
		set LongDesc to " (Aired: " & (do shell script "defaults read com.Breakfast.engine Tags.Aired") & " on " & tvnn & ") " & episodeDescription
		
		-- Set up the name
		set trackName to showName & " - S" & longSeason & "E" & longEpisode
		
		-- now set the tags
		set name of theTrack to trackName
		set show of theTrack to showName
		set theTrack's season number to do shell script "defaults read com.Breakfast.engine Tags.Season"
		set episode number of theTrack to do shell script "defaults read com.Breakfast.engine Tags.Episode"
		set episode ID of theTrack to episodeName
		set long description of theTrack to LongDesc
		set description of theTrack to LongDesc
		if ((do shell script "defaults read com.Breakfast.engine Tags.Stik") as integer) = 10 then
			set video kind of theTrack to TV show
		end if
	end tell
	-- Clean up
	do shell script "defaults write com.Breakfast.engine Tags.Season -int '0'"
	do shell script "defaults write com.Breakfast.engine Tags.Episode -int '0'"
	do shell script "defaults write com.Breakfast.engine Tags.Aired -string '-'"
	do shell script "defaults write com.Breakfast.engine Tags.Stik -string '-'"
	do shell script "defaults write com.Breakfast.engine Tags.tven -string '-'"
end run