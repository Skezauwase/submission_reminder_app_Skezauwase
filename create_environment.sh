#!/usr/bin/bash
#creates an app reminder for students to remind them pending submissions
#ask for user input and create a directory submissions_reminder_{userinput}
read -p "Enter your name: " yourname
keza_dir="submissions_reminder_$yourname"
mkdir -p $keza_dir

#create subdirectories inside parent directory
mkdir -p "$keza_dir/app"
mkdir -p "$keza_dir/modules"
mkdir -p "$keza_dir/assets"
mkdir -p "$keza_dir/config"

#create files inside the subdirectories

#create a submissions.txt file
echo "student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Wilson, Shell Basics, submitted
Louis, Shell Navigation, not submitted
Hervine, Git, submitted
Issac, Shell Navigation, not submitted
KayKay, Git, submitted" > $keza_dir/assets/submissions.txt

#create a config file
echo '# This is the config file
ASSIGNMENT= "Shell Navigation"
DAYS_REMAINING=2' > $keza_dir/config/config.txt

#create modules/reminder.sh file

echo '#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done < <(tail -n +2 "$submissions_file") # Skip the header
    }' > $keza_dir/modules/functions.sh

#create app/reminder.sh file

echo '#!/bin/bash

# Source environment variables and helper functions
source ./config/config.env
source ./modules/functions.sh

# Path to the submissions file
submissions_file="./assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions $submissions_file' > $keza_dir/app/reminder.sh