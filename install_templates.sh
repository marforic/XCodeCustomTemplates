#
#  Copyright Claudio Marforio marforio@gmail.com
#

#!/usr/bin

if [[ $# != 3 ]]; then
	echo "Usage: ./install_templates.sh \"Name\" \"Email\" \"Organization\""
	exit
fi

# Set defaults for substitution in templates
defaults write com.apple.Xcode PBXCustomTemplateMacroDefinitions "{\"UNAME\"=\"$1\";\"DEVELOPEREMAIL\"=\"$2\";\"ORGANIZATIONNAME\"=\"$3\";}"

# Link templates for XCode
dirToMake="$HOME/Library/Application Support/Developer/Shared/Xcode/File Templates/$3/"
linkToMake=$dirToMake"Cocoa Touch Classes"

mkdir -p "$dirToMake"
if [ -h "$linkToMake" ]; then
	rm "$linkToMake"
fi
ln -Fs "$(pwd)/File Templates/Cocoa Touch Classes" "$linkToMake"