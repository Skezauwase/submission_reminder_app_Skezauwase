#!/usr/bin/bash
#creates an app reminder for students to remind them pending submissions
#ask for user input and create a directory submissions_reminder_{userinput}
read -p "Enter your name: " yourname
mkdir -p submissions_reminder_$yourname

parent_dir="submissions_reminder_'$yourname'"
#create subdirectories
mkdir -p "$parent_dir/app"
mkdir -p "$parent_dir/modules"
mkdir -p "$parent_dir/assets"
mkdir -p "$parent_dir/config"

