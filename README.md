
# Submission Reminder App

This project helps you remember which students have not submitted their assignments. It uses simple Bash scripts. You can use it on your computer.



## Table of contents

- [How the project is organized](#how-the-project-is-organized)
- [Why use this project?](#why-use-this-project)
- [How to start (step by step)](#how-to-start-step-by-step)
  - [What you need first](#what-you-need-first)
  - [How to create your reminder folder](#how-to-create-your-reminder-folder)
  - [How to see the reminder](#how-to-see-the-reminder)
  - [How to change the assignment and days](#how-to-change-the-assignment-and-days)
- [How the files look and rules](#how-the-files-look-and-rules)
- [If you have problems (help)](#if-you-have-problems-help)
- [How to make the project better](#how-to-make-the-project-better)
- [About this project](#about-this-project)


## How the project is organized

This project has these main files:

- `create_environment.sh`: This script makes a new folder for you. It puts all the files you need inside.
- `copilot_shell_script.sh`: This script helps you change the assignment name and days left. It can also run the reminder for you.
- `README.md`: This file you are reading now.

When you use `create_environment.sh`, it makes a folder like `submission_reminder_yourname`.
Inside that folder, you will see:

- `app/reminder.sh`: Shows the assignment, days left, and students who did not submit.
- `modules/functions.sh`: Has a helper function for checking submissions.
- `assets/submissions.txt`: List of students, assignments, and if they submitted.
- `config/config.env`: Keeps the assignment name and days left.
- `startup.sh`: Runs the reminder easily.


## Why use this project?

This project is good for teachers or students who want to:

- Learn how to use simple Bash scripts.
- See which students have not submitted their work.

You do not need to install anything special. Just use Bash (for example, Git Bash on Windows).


## How to start (step by step)

### What you need first

You need Bash. On Windows, you can use Git Bash. On Linux or Mac, Bash is already there.

### How to create your reminder folder

1. Make the script ready to run:
  ```bash
  chmod +x create_environment.sh
  ./create_environment.sh
  ```
2. The script will ask your name. Type your name and press Enter.
3. It will make a folder like `submission_reminder_yourname` with all files inside.

### How to see the reminder

1. Go into your folder:
  ```bash
  cd submission_reminder_yourname
  ./startup.sh
  ```
2. You will see the assignment name, days left, and a list of students who did not submit.

### How to change the assignment and days

1. Make the helper script ready to run:
  ```bash
  chmod +x copilot_shell_script.sh
  ./copilot_shell_script.sh
  ```
2. It will ask:
  - Your name (letters only)
  - Assignment name (letters, numbers, spaces)
  - Days left (numbers only)
3. It will update the info and can run the reminder for you.
4. Example output:
  ```
  Assignment: Shell Navigation
  Days remaining to submit: 3 days
  --------------------------------------------
  Reminder: Chinemerem has not submitted the Shell Navigation assignment!
  Reminder: Divine has not submitted the Shell Navigation assignment!
  Reminder: Louis has not submitted the Shell Navigation assignment!
  Reminder: Issac has not submitted the Shell Navigation assignment!
  ```


## How the files look and rules

- `assets/submissions.txt`: This file has a list of students, assignments, and if they submitted. Each line looks like:
  ```
  student, assignment, submission status
  Alice, Shell Navigation, not submitted
  ```
- `config/config.env`: This file keeps the assignment name and days left. Example:
  ```
  ASSIGNMENT="Shell Navigation"
  DAYS_REMAINING=3
  ```

When you use the helper script, it checks:
- Name: must have only letters (A-Z or a-z)
- Assignment: can have letters, numbers, and spaces
- Days left: must be numbers only

If you make a mistake, the script will show an error and stop.


## If you have problems (help)

- If you see "Directory does not exist" when running `copilot_shell_script.sh`, make sure you first ran `create_environment.sh` and used the same name.
- If you see "permission denied", make the scripts executable:
  ```bash
  chmod +x create_environment.sh
  chmod +x copilot_shell_script.sh
  chmod +x submission_reminder_yourname/startup.sh
  ```
- On Windows, use Git Bash or WSL. The scripts use commands like `tail`, `awk`, and `grep`.


## How to make the project better

- Make the script understand more types of files (for example, if a name has a comma).
- Make the assignment check not care about big or small letters.
- Make the reminder write to a file or send a message.
- Add tests to check if the script works well.


## About this project

This project is for learning. You can use it and change it as you want.

---

If you want to make the script better, or need help, just ask!
