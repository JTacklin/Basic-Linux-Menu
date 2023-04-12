#!/bin/bash

# Name: Justin Tackling
# UNF N-number: N01457800

while true; do
  # Display menu
  echo "Select an option:"
  echo "1. Display a list of files and directories in the current directory"
  echo "2. Display a long list of files and directories in the current directory"
  echo "3. Display the last 10 lines of the log file messages (/var/log/messages)"
  echo "4. Display the contents of this script"
  echo "5. Display the contents of this script in reverse order"
  echo "6. Exit the program"

  # Prompt user for input
  read -p "Enter your choice [1-6]: " choice

  # Perform action based on user input
  case $choice in
    1)
      ls
      ;;
    2)
      ls -l
      ;;
    3)
      sudo tail -n 10 /var/log/messages
      ;;
    4)
      cat $0
      ;;
    5)
      tac $0
      ;;
    6)
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter a number between 1 and 6."
      ;;
  esac
done
