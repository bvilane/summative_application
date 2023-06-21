#!/bin/bash

# Select just the emails of the student and save them in a file “student-emails.txt”
  cut -d ',' -f 1 students-list_0333.txt>student-emails.txt

  echo "All emails saved in student-emails.txt:"
cat student-emails.txt
