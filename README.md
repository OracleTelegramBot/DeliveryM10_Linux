# DeliveryM10_Linux
Automation for git pull and execution with cronjob

## How to automate the process every 15 minutes?

1. Execute `crontab -e` command to edit current user cronjobs.
2. Add `*/15 * * * * /absolute/path/script.sh > /dev/null 2>&1` to save the new cronjob.
3. Press [ESC]; then press [:wq] and finally [ENTER].

That's it!

## How can I see the new cronjob?

1. Type `crontab -l` and you can see the new cronjob that will execute the script every 15 minutes.

## What does the script?

The script clone a git repository if is not already cloned in the current user Desktop. If it is already cloned, just pull the new changes with git pull.
