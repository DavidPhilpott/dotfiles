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

printf "Archiving work project '$project_name'."

printf "\n\nArchive Trello list in the 'Work' board with the name 'To Do - $project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Evernote / Tusk notebook in the 'Work' stack with the name '$project_name' to 'Archived' stack.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Dropbox folder inside the 'work' folder with the name '$lower_dash_project_name' to 'archived' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nRename Bitwarden folder with the name 'work-$lower_dash_project_name' to 'archived-work-$lower_dash_project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove folder on personal machine with the name '$lower_dash_project_name' from ~/git/work to ~/git/archived/work/.\n"
mv -i $HOME/git/work/$lower_dash_project_name $HOME/git/archived/work/

printf "\n\nDelete firefox profile with the name '$project_name'.\n"
read -s -p "Press Enter when complete."

printf "\n\nRemove personal shell config content relating to '$project_name'.\n"
printf "vim ~/.zshrc\n"
read -s -p "Press Enter when complete." 

printf "\n\nRemove personal aws config content relating to '$project_name'.\n"
printf "vim ~/.aws/config\n"
printf "vim ~/.aws/credentials\n"
read -s -p "Press Enter when complete." 

printf "\n\nMove Boox folder for '$project_name' from 'Work' to 'Archived'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove ssh keys from ~/.ssh relating to '$project_name' into Bitwarden.\n"
read -s -p "Press Enter when complete."

exit 0