set engineFolder to choose folder with prompt "Where is the base Engine folder? It should have this installer in it, along with engine.sh, ingnition.applescript, detail.sh, and folders called DOC and BIN."
do shell script "cd $HOME/Library/Application\\ Support/; mkdir Engine; cd " & (the POSIX path of engineFolder) & "; osacompile -o BIN/ignition.scpt ignition.txt; cp detail.sh $HOME/Library/Application\\ Support/Engine/; cp engine.sh $HOME/Library/Application\\ Support/Engine/; cd BIN; cp HandbrakeCLI $HOME/Library/Application\\ Support/Engine/; cp mp4art $HOME/Library/Application\\ Support/Engine/; cp mp4tags $HOME/Library/Application\\ Support/Engine/; cp mp4track $HOME/Library/Application\\ Support/Engine/; cp ignition.scpt /Library/Scripts/Folder\\ Action\\ Scripts/; cp HandBrakeCLI $HOME/Library/Application\\ Support/Engine/"
set TargetFolder to choose folder with prompt "Choose a folder to watch for added files: "
set hackery to TargetFolder as text
tell application "Finder" to set FAName to name of alias hackery
tell application "System Events"
	make new folder action at the end of folder actions with properties {path:(TargetFolder as text)}
	tell folder action FAName
		make new script at the end of scripts with properties {name:"ignition.scpt"}
	end tell
end tell

