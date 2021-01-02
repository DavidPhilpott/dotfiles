#! /bin/bash
set -euo pipefail

while getopts p: option
do
case "${option}"
in
p) PROJECT_NAME=${OPTARG};;
esac
done

if [ -z "$PROJECT_NAME" ]
then
      echo "No project name passed to script. Use -p argument."
      exit 1
fi

printf "Setting up new work project for '$PROJECT_NAME'."

printf "\n\nCreate new Trello list in the 'Work' board with the name 'To Do - $PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Evernote / Tusk notebook in the 'work' stack with the name '$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Dropbox folder with the name '$PROJECT_NAME' in the 'work' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Bitwarden folder with the name 'work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new folder on personal machine with the name '$PROJECT_NAME' in /home/work.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate firefox profile with the name '$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nInstall the following firefox addons to profile '$PROJECT_NAME' and enable in private windows.\n"
printf "∙ uBlock Origin\n"
printf "∙ Impulse Blocker\n"
printf "∙ Privacy Badger\n"
printf "∙ Decentraleyes\n"
printf "∙ HTTPs Everywhere\n"
printf "∙ NoScript\n"
read -s -p "Press Enter when complete."

printf "\n\nConfigure the firefox profile '$PROJECT_NAME' with the following settings.\n"
printf "∙ Set DuckDuckGo as default search engine\n"
printf "∙ Disable 'Provide Search Suggestions'\n"
printf "∙ 'Strict' Enhanced Tracking Protection\n"
printf "∙ Set 'Always' option for 'Do Not Track'\n"
printf "∙ Disable all firefox data collection\n"
printf "∙ Enable HTTPs Mode\n"
read -s -p "Press Enter when complete."

exit 0