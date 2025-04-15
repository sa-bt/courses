#!/bin/bash

LOG_FILE="./bash-toolkit.log"

# 🎨 Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') | $1" >> "$LOG_FILE"
}

backup() {
    read -p "📁 ${CYAN}Enter the folder path to back up:${NC} " SOURCE
    DEST=~/backups
    DATE=$(date +%Y%m%d_%H%M%S)
    FILENAME=$(basename "$SOURCE")_$DATE.zip

    mkdir -p "$DEST"
    zip -r "$DEST/$FILENAME" "$SOURCE" > /dev/null

    echo -e "${GREEN}✅ Backup saved to: $DEST/$FILENAME${NC}"
    log_action "Backup created for $SOURCE at $DEST/$FILENAME"
}

cleanup() {
    read -p "🧹 ${CYAN}Enter the folder path to clean up:${NC} " TARGET_DIR
    find "$TARGET_DIR" -type f \( -name "*.log" -o -name "*.tmp" \) -delete
    echo -e "${YELLOW}🧼 Temporary files deleted from $TARGET_DIR.${NC}"
    log_action "Cleanup done for $TARGET_DIR"
}

organize() {
    read -p "🗂️ ${CYAN}Enter the folder path to organize:${NC} " TARGET
    cd "$TARGET" || exit

    for file in *.*; do
        ext="${file##*.}"
        mkdir -p "$ext"
        mv "$file" "$ext/"
    done

    echo -e "${GREEN}📂 Files organized by extension in $TARGET.${NC}"
    log_action "Organized files in $TARGET"
}

ping_test() {
    read -p "🌐 ${CYAN}Enter an address or IP to ping (default: 8.8.8.8):${NC} " TARGET
    TARGET=${TARGET:-8.8.8.8}
    ping -c 4 "$TARGET" > /dev/null

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Successfully connected to $TARGET${NC}"
        log_action "Ping to $TARGET successful"
    else
        echo -e "${RED}❌ Could not connect to $TARGET${NC}"
        log_action "Ping to $TARGET failed"
    fi
}

while true; do
    clear
    echo -e "${CYAN}🚀 Bash Toolkit with Logs & Colors${NC}"
    echo "------------------------------------------"
    echo "1) 📁 Backup folder"
    echo "2) 🧹 Clean temporary files"
    echo "3) 🗂️ Organize files by type"
    echo "4) 🌐 Ping test"
    echo "5) 📜 View log"
    echo "6) ❌ Exit"
    echo "------------------------------------------"
    read -p "Choose an option [1-6]: " CHOICE

    case $CHOICE in
        1) backup ;;
        2) cleanup ;;
        3) organize ;;
        4) ping_test ;;
        5) echo -e "\n${YELLOW}📜 Log content:${NC}"; cat "$LOG_FILE"; read -p "⬅️ Press Enter to continue..." pause ;;
        6) echo -e "${CYAN}👋 Goodbye!${NC}" ; exit ;;
        *) echo -e "${RED}❗ Invalid option!${NC}" ; sleep 1 ;;
    esac

    echo ""
    read -p "🔁 Press Enter to return to the menu..." pause
done