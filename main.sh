#!/bin/bash

# Create the student record
create_student_record() {
  echo "Enter student email:"
  read email

  echo "Enter student age:"
  read age

  echo "Enter student ID:"
  read id

  echo "$email,$age,$id" >> students-list_0333.txt
}

# View all students saved in the file and list them on the terminal
view_all_students() {
  cat students-list_0333.txt
}

# Delete the student in the file (By using the student ID)
delete_student() {
  echo "Enter student ID:"
  read id

  sed -i "/$id/d" students-list_0333.txt
}

# Update the student record in the list (By using the student ID)
update_student_record() {
  echo "Enter student ID:"
  read id

  echo "Enter new email:"
  read email

  echo "Enter new age:"
  read age

  sed -i "/$id/c\\$email,$age,$id" students-list_0333.txt
}

# Exit the application
exit_application() {
  exit
}

# Display menu options to user
display_menu() {
  echo "Bachelor of Software Engineering cohort list of students"
  echo "1. Create Student Record"
  echo "2. View All Students"
  echo "3. Delete Student"
  echo "4. Update Student Record"
  echo "5. Exit Application"
}

# Main function to run application
main() {
  while true; do
    display_menu

    read choice

    case $choice in
      '1')
        create_student_record;;
      '2')
        view_all_students;;
      '3')
        delete_student;;
      '4')
        update_student_record;;
      '5')
        exit_application;;
      *)
        echo "Invalid choice";;
    esac
  done
}

main "$@"
