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

printf "\n\nArchive Trello list in the 'Work' board with the name 'To Do - $PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Evernote / Tusk notebook in the 'Work' stack with the name '$PROJECT_NAME' to 'Archived' stack.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Dropbox folder inside the 'work' folder with the name '$PROJECT_NAME' to 'archived' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nRename Bitwarden folder with the name 'work-$PROJECT_NAME' to 'archived-work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove folder on personal machine with the name '$PROJECT_NAME' from /home/git/work/ to /home/git/archived/work/.\n"
read -s -p "Press Enter when complete."

printf "\n\nDelete firefox profile with the name '$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nRemove personal shell config content relating to '$PROJECT_NAME'.\n"
printf "vim ~/.zshrc\n"
read -s -p "Press Enter when complete." 

printf "\n\nRemove personal aws config content relating to '$PROJECT_NAME'.\n"
printf "vim ~/.aws/config\n"
printf "vim ~/.aws/credentials\n"
read -s -p "Press Enter when complete." 

printf "\n\nMove Boox folder for '$PROJECT_NAME' from 'Work' to 'Archived'.\n"
read -s -p "Press Enter when complete."

exit 0