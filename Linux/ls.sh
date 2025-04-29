#!/bin/bash

# Colors
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

# Flags and descriptions
declare -A flags
flags["-l"]="Long listing format (detailed info)"
flags["-a"]="Include hidden files"
flags["-h"]="Human-readable sizes (use with -l)"
flags["-R"]="Recursive listing of directories"
flags["-S"]="Sort by file size"
flags["-t"]="Sort by modification time"
flags["-r"]="Reverse order"
flags["-d"]="List directory itself, not its contents"
flags["-i"]="Show inode numbers"
flags["-1"]="One entry per line"

# Welcome message
echo -e "${YELLOW}=== Interactive LS Flags Explorer ===${NC}"

# Show available flags
echo -e "${CYAN}Available flags:${NC}"
for flag in "${!flags[@]}"; do
    echo -e "  ${BLUE}$flag${NC} — ${flags[$flag]}"
done

# Ask user to choose one
echo -ne "\n${YELLOW}Enter a flag to test (e.g., -l): ${NC}"
read user_flag

# Check if valid
if [[ -n "${flags[$user_flag]}" ]]; then
    echo -e "\n${BLUE}Flag: $user_flag${NC} — ${flags[$user_flag]}"
    echo -e "${CYAN}Running: ls $user_flag${NC}\n"
    ls $user_flag
else
    echo -e "${RED}Invalid flag or unsupported in this script.${NC}"
fi

echo -e "\n${YELLOW}=== End of Session ===${NC}"
