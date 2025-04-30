#!/bin/bash

# Colors
GREEN='\033[0;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

# Flag descriptions
declare -A flags
flags["-p"]="Create parent directories as needed"
flags["-v"]="Print a message for each created directory"
flags["--mode"]="Set permission mode (e.g. 755)"

# Title
echo -e "${YELLOW}=== MKDIR Flags Tutorial ===${NC}"

# Show available flags
echo -e "${CYAN}Available flags:${NC}"
for flag in "${!flags[@]}"; do
    echo -e "  ${GREEN}$flag${NC} — ${flags[$flag]}"
done

# Ask for flag
echo -ne "\n${YELLOW}Enter a flag to test (e.g., -p): ${NC}"
read user_flag

# Create a test directory path
TEST_DIR="demo_dir/subdir"

# Handle flag logic
case "$user_flag" in
    -p)
        echo -e "${CYAN}Command: mkdir -p $TEST_DIR${NC}"
        mkdir -p "$TEST_DIR"
        echo -e "${GREEN}Created $TEST_DIR with parent directories.${NC}"
        ;;
    -v)
        echo -e "${CYAN}Command: mkdir -v verbose_dir${NC}"
        mkdir -v "verbose_dir"
        ;;
    --mode)
        echo -ne "${YELLOW}Enter permission mode (e.g., 755): ${NC}"
        read mode
        echo -e "${CYAN}Command: mkdir --mode=$mode mode_dir${NC}"
        mkdir --mode="$mode" mode_dir
        ls -ld mode_dir
        ;;
    *)
        echo -e "${RED}Invalid or unsupported flag.${NC}"
        ;;
esac
