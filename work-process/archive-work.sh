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

printf "Archiving work project '$PROJECT_NAME'."

printf "\n\nArchive Trello board with the name 'work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Evernote / Tusk notebook in the 'Work' stack with the name '$PROJECT_NAME' to 'Archived' stack.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Dropbox folder inside the 'work' folder with the name '$PROJECT_NAME' to 'archived' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nRename Bitwarden folder with the name 'work-$PROJECT_NAME' to 'archived-work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove folder on personal machine with the name '$PROJECT_NAME' from /home/work/ to /home/archived/.\n"
read -s -p "Press Enter when complete."

exit 0