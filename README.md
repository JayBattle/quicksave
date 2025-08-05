# quicksave
A script to quickly git commit multiple repositories using a timestamp as the commit message

## Requires
- quickcommit.sh

## Setup
1) chmod +x quicksave.sh
2) cp quicksave.sh /usr/local/bin

## Startup
1) navigate to a folder containing multiple repos
2) quicksave.sh

Optional Arugments:

Enter the following Arguments in order

1) all or ask
- all commits all directories
- ask prompts
2) "COMMIT_MESSAGE"
- this replaces the timestamp

Example: quicksave.sh all "my first commit!"


