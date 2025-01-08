#!/bin/bash

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# File and log file names
FILENAME="example_file.txt"
LOGFILE="file_info.log"

# Log the start time
echo -e "${YELLOW}Script started at: $(date)${NC}"

# Check if the file exists; create it if not
if [ ! -f "$FILENAME" ]; then
    echo -e "${YELLOW}File does not exist. Creating file...${NC}"
    touch "$FILENAME"
    echo "[$(date)] File '$FILENAME' was created." >> "$LOGFILE"
else
    echo -e "${GREEN}File '$FILENAME' already exists.${NC}"
    echo "[$(date)] File '$FILENAME' already existed." >> "$LOGFILE"
fi

# Display and log file information
echo -e "\n${GREEN}File information:${NC}"
stat "$FILENAME" | tee -a "$LOGFILE"

# Log the end time
echo -e "\n${YELLOW}Script ended at: $(date)${NC}"
