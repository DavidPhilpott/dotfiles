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

printf "\n\nCreate new Trello board with the name 'work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Evernote / Tusk notebook in the 'work' stack with the name '$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Dropbox folder with the name '$PROJECT_NAME' in the 'work' folder.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new Bitwarden folder with the name 'work-$PROJECT_NAME'.\n"
read -s -p "Press Enter when complete."

printf "\n\nCreate new folder on personal machine with the name '$PROJECT_NAME' in /home/work.\n"
read -s -p "Press Enter when complete."

exit 0