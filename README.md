# quicksave
A script to quickly git commit multiple repositories using a timestamp as the commit message

## Requires
quickcommit.sh

## Setup
chmod +x quicksave.sh
cp quicksave.sh /usr/local/bin

## Startup
navigate to a folder containing multiple repos
quicksave.sh

Optional Arugments:
Enter the following Arguments in order
1) all or ask
- all commits all directories
- ask prompts
2) "COMMIT_MESSAGE"
- this replaces the timestamp

Example: quicksave.sh all "my first commit!"


