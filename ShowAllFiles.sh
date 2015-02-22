#Показывает или скрывает скрытые файлы и папки
STATUS=$(defaults read com.apple.finder AppleShowAllFiles)
if [[ $STATUS == 'FALSE' ]]
 then
	defaults write com.apple.finder AppleShowAllFiles TRUE;
	killall Finder;
 	echo "files are showed now";
 else
 	defaults write com.apple.finder AppleShowAllFiles FALSE;
	killall Finder;
	echo "files are hidden now";
fi
