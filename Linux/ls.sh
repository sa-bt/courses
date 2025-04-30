#!/bin/bash

# Colors
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

# Flag descriptions
declare -A flags
flags["l"]="Long listing format"
flags["a"]="Include hidden files"
flags["h"]="Human-readable sizes"
flags["R"]="Recursive listing"
flags["S"]="Sort by file size"
flags["t"]="Sort by modification time"
flags["r"]="Reverse order"
flags["d"]="List directory itself"
flags["i"]="Show inode numbers"
flags["1"]="One entry per line"

# Display available flags
echo -e "${YELLOW}=== LS Flags (Multiple) Explorer ===${NC}"
echo -e "${CYAN}Supported flags:${NC}"
for f in "${!flags[@]}"; do
  echo -e "  ${BLUE}-$f${NC} — ${flags[$f]}"
done

# Get user input
echo -ne "\n${YELLOW}Enter multiple flags (without space, e.g. lha): ${NC}"
read user_input

# Extract flags and validate
valid_flags=""
echo -e "\n${CYAN}Flag descriptions:${NC}"
for (( i=0; i<${#user_input}; i++ )); do
  char="${user_input:$i:1}"
  if [[ -n "${flags[$char]}" ]]; then
    echo -e "  ${BLUE}-$char${NC} — ${flags[$char]}"
    valid_flags+="$char"
  else
    echo -e "  ${RED}-$char is not supported in this tutorial.${NC}"
  fi
done

# Run ls if any valid flag
if [[ -n "$valid_flags" ]]; then
  echo -e "\n${CYAN}Running: ls -$valid_flags${NC}"
  ls -$valid_flags
else
  echo -e "\n${RED}No valid flags were entered.${NC}"
fi
