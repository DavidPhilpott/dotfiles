#! /bin/bash
set -euo pipefail

while getopts p: option
do
case "${option}"
in
p) project_name=${OPTARG};;
esac
done

if [ -z "$project_name" ]
then
      echo "No project name passed to script. Use -p argument."
      exit 1
fi

lower_project_name=${project_name,,}
lower_dash_project_name=${lower_project_name// /_}

printf "Setting up new work project for '$project_name'."

printf "\n\nCreate new Trello list in the 'Work' board with the name 'To Do - $project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Evernote / Tusk notebook in the 'work' stack with the name '$project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Dropbox folder with the name '$lower_dash_project_name' in the 'work' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Bitwarden folder with the name 'work-$lower_dash_project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new folder on personal machine with the name '$lower_dash_project_name' in /home/git/work.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate firefox profile with the name '$project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nInstall the following firefox addons to profile '$project_name' and enable in private windows.\n"
printf "∙ uBlock Origin\n"
printf "∙ Impulse Blocker\n"
printf "∙ Privacy Badger\n"
printf "∙ Decentraleyes\n"
printf "∙ HTTPs Everywhere\n"
printf "∙ NoScript\n"
read -s -p "Press Enter when complete."

printf "\n\nConfigure the firefox profile '$project_name' with the following settings.\n"
printf "∙ Set DuckDuckGo as default search engine\n"
printf "∙ Disable 'Provide Search Suggestions'\n"
printf "∙ 'Strict' Enhanced Tracking Protection\n"
printf "∙ Set 'Always' option for 'Do Not Track'\n"
printf "∙ Disable all firefox data collection\n"
printf "∙ Enable HTTPs Mode\n"
printf "∙ Enable 'privacy.resistFingerprinting' in about:config\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate folder named '$project_name' in the 'Work' folder on the Boox tablet.\n"
read -s -p "Press Enter when complete." 

exit 0