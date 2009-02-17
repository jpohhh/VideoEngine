set engineFolder to choose folder with prompt "Where is the base Engine folder? It should have this installer in it, along with engine.sh, ingnition.applescript, detail.sh, and folders called DOC and BIN."
set watcherScript to ((engineFolder as text) & "/BIN/ignition.scpt")
do shell script "cd " & (the POSIX path of engineFolder) & "; osacompile -o BIN/ignition.scpt ignition.applescript; cp detail.sh $HOME/Library/Application\\   Support/Engine/; cp engine.sh $HOME/Library/Application\\ Support/Engine/; cd BIN cp HandbrakeCLI $HOME/Library/Application\\ Support/Engine/; cp mp4art $HOME/Library/Application\\ Support/Engine/; cp mp4tags $HOME/Library/Application\\ Support/Engine; cp mp4track $HOME/Library/Application\\ Support/Engine; cp ignition.scpt $HOME/Library/Scripts/Folder\\ Action\\ Scripts/"
set result to choose folder with prompt "Choose a folder to watch for added files: "
set watchFolder to result
tell application "System Events"
	attach action to watchFolder using watcherScript
end tell
