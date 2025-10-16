# submission reminder app

A simple Bash-based application that reminds students of their pending assignment submissions.  
The app reads student submission records and outputs reminders for assignments that have not been submitted yet.

## Features

- Creates a personalized environment for each user.
- Maintains organized directories for scripts, configuration, and data.
- Validates user input for assignment names, number of days remaining, and student names.
- Reminds students of pending submissions based on a configurable assignment.
- Easy to run via a single startup script.

## Directory Structure

After running the setup script, the following directory structure will be created:

submissions_reminder_<your_name>/
├── app/
│ └── reminder.sh # Main reminder script
├── modules/
│ └── functions.sh # Helper functions for checking submissions
├── assets/
│ └── submissions.txt # Student submission data
├── config/
│ └── config.env # Assignment configuration (assignment name & days remaining)
└── startup.sh # Script to start the reminder app

## Setup Instructions

1. **Create the environment**

Run the setup script:

```bash
./create_environment.sh