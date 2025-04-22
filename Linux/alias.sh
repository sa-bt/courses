#!/bin/bash
ALIAS_FILE="$HOME/.my_aliases"
touch "$ALIAS_FILE"


# رنگ‌ها برای زیبایی
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # no color

function show_menu {
  echo -e "${YELLOW}--- Alias Manager ---${NC}"
  echo "1. Add new alias"
  echo "2. List all aliases"
  echo "3. Remove an alias"
  echo "4. Update an alias"
  echo "5. Apply aliases now"
  echo "6. Exit"
  echo -n "Choose an option: "
}

function prompt_reload {
  echo -n -e "${YELLOW}Apply aliases now? (y/n): ${NC}"
  read answer
  if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    source "$ALIAS_FILE"
    echo -e "${GREEN}Aliases applied to current shell.${NC}"
  else
    echo -e "${YELLOW}You can apply them manually with: source ~/.my_aliases${NC}"
  fi
}

function add_alias {
  read -p "Enter alias name: " name
  read -p "Enter command: " cmd

  if grep -q "alias $name=" "$ALIAS_FILE"; then
    echo -e "${RED}Alias '$name' already exists.${NC}"
  else
    echo "alias $name=\"$cmd\"" >> "$ALIAS_FILE"
    echo -e "${GREEN}Alias added: $name → $cmd${NC}"
    prompt_reload
  fi
}

function list_aliases {
  echo -e "${YELLOW}--- Saved Aliases ---${NC}"
  cat "$ALIAS_FILE"
}

function remove_alias {
  read -p "Enter alias name to remove: " name
  if grep -q "alias $name=" "$ALIAS_FILE"; then
    sed -i "/alias $name=/d" "$ALIAS_FILE"
    echo -e "${GREEN}Alias '$name' removed.${NC}"
    prompt_reload
  else
    echo -e "${RED}Alias '$name' not found.${NC}"
  fi
}

function update_alias {
  read -p "Enter alias name to update: " name
  if grep -q "alias $name=" "$ALIAS_FILE"; then
    read -p "Enter new command: " new_cmd
    sed -i "/alias $name=/c\alias $name=\"$new_cmd\"" "$ALIAS_FILE"
    echo -e "${GREEN}Alias '$name' updated.${NC}"
    prompt_reload
  else
    echo -e "${RED}Alias '$name' not found.${NC}"
  fi
}

function apply_aliases {
  source "$ALIAS_FILE"
  echo -e "${GREEN}Aliases applied to current shell.${NC}"
}

while true; do
  show_menu
  read option
  case $option in
    1) add_alias ;;
    2) list_aliases ;;
    3) remove_alias ;;
    4) update_alias ;;
    5) apply_aliases ;;
    6) echo "Bye 👋"; break ;;
    *) echo -e "${RED}Invalid option${NC}" ;;
  esac
  echo
done