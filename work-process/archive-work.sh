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

printf "\n\nArchive Trello board with the name 'Work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Evernote / Tusk notebook with the name 'Work-$PROJECT_NAME' to 'Archived' stack.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove Dropbox folder with the name 'Work-$PROJECT_NAME' to 'Archived' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nRename Bitwarden folder with the name 'Work-$PROJECT_NAME' to 'zArchived-Work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nMove folder on personal machine with the name 'Work-$PROJECT_NAME' in /home/ to /home/archived/.\n"
read -s -p "Press Enter when complete."

exit 0