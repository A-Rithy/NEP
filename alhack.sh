#!/bin/bash
# NeuroHexa - Advanced Ethical Hacking Toolkit
# Version: 5.0
# Author: AlbHacker (Rebranded as NeuroHexa)
# GitHub: https://github.com/NeuroHexa

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# Create Tools directory if not exists
clear
mkdir -p NeuroHexa_Tools
clear

# Banner
echo -e "${PURPLE}
  _   _ _____ ____  _   _ ______   ___  _   _ _____ ____  
 | \ | | ____|  _ \| | | |  _ \ \ / / || | | ____|  _ \ 
 |  \| |  _| | |_) | |_| | | | \ V /| || |_|  _| | |_) |
 | |\  | |___|  __/|  _  | |_| || | |__   _| |___|  __/ 
 |_| \_|_____|_|   |_| |_|____/ |_|    |_| |_____|_|    
                                                         
${NC}"
echo -e "${CYAN}Version: 5.0${NC}            ${CYAN}CTRL+C:${NC} Exit          ${CYAN}Author:${NC} NeuroHexa"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# Main Menu
echo -e "
${WHITE}[1]${CYAN} Requirements & Update        ${WHITE}[2]${CYAN} Phishing Tool
${WHITE}[3]${CYAN} WebCam Hack                 ${WHITE}[4]${CYAN} Subdomain Scanner
${WHITE}[5]${CYAN} Email Bomber                ${WHITE}[6]${CYAN} DDOS Attack
${WHITE}[7]${CYAN} How to Use?                 ${WHITE}[8]${CYAN} Remove Installed Tools
${WHITE}[9]${CYAN} IP Info                     ${WHITE}[10]${CYAN} Dorks Eye
${WHITE}[11]${CYAN} HackerPro                  ${WHITE}[12]${CYAN} RED HAWK
${WHITE}[13]${CYAN} Virus Crafter              ${WHITE}[14]${CYAN} Website Info
${WHITE}[15]${CYAN} BadMod                     ${WHITE}[16]${CYAN} Facebash
${WHITE}[17]${CYAN} DARK ARMY                  ${WHITE}[18]${CYAN} Auto IP Changer
${WHITE}[19]${CYAN} WiFi Deauther              ${WHITE}[20]${CYAN} SQL Scanner
${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}
"

# Function to display loading animation
function loading {
    echo -ne "${GREEN}Loading ["
    for i in {1..20}; do
        echo -ne "#"
        sleep 0.1
    done
    echo -ne "] Done!${NC}"
    echo
}

# Function to install requirements
function install_requirements {
    echo -e "${YELLOW}[*] Installing requirements...${NC}"
    loading
    
    apt update && apt upgrade -y
    pkg install git python python2 python3 php curl wget -y
    pip install --upgrade pip
    pip install requests colorama
    
    echo -e "${GREEN}[+] All requirements installed successfully!${NC}"
    sleep 2
    clear
    ./neurohexa.sh
}

# Function to install tool from GitHub
function install_tool {
    local tool_name=$1
    local github_url=$2
    local install_cmd=$3
    
    echo -e "${YELLOW}[*] Installing ${tool_name}...${NC}"
    cd NeuroHexa_Tools
    git clone ${github_url}
    loading
    
    if [ ! -z "$install_cmd" ]; then
        cd $(basename "$github_url" .git)
        eval "$install_cmd"
    else
        cd ..
    fi
    
    echo -e "${GREEN}[+] ${tool_name} installed successfully!${NC}"
    sleep 2
    clear
    ./neurohexa.sh
}

# Main logic
read -p "${WHITE}NeuroHexa > ${NC}" choice

case $choice in
    1|01)
        install_requirements
        ;;
    2|02)
        install_tool "Zphisher" "https://github.com/htr-tech/zphisher" "bash zphisher.sh"
        ;;
    3|03)
        install_tool "CamPhish" "https://github.com/techchipnet/CamPhish" "bash camphish.sh"
        ;;
    4|04)
        install_tool "SubScan" "https://github.com/zidansec/subscan" "./subscan"
        ;;
    5|05)
        install_tool "Email Bomber" "https://github.com/juzeon/fast-mail-bomber.git" "php index.php update-providers && php index.php update-nodes"
        ;;
    6|06)
        install_tool "DDOS Ripper" "https://github.com/palahsu/DDoS-Ripper.git" "python3 DRipper.py"
        ;;
    7|07)
        echo -e "${BLUE}Opening tutorial video...${NC}"
        python3 -m webbrowser https://www.youtube.com/watch?v=zgdq6ErscqY
        sleep 3
        ./neurohexa.sh
        ;;
    8|08)
        echo -e "${RED}[!] Removing all installed tools...${NC}"
        rm -rf NeuroHexa_Tools
        loading
        echo -e "${GREEN}[+] All tools removed successfully!${NC}"
        sleep 2
        ./neurohexa.sh
        ;;
    9|09)
        install_tool "Track IP" "https://github.com/htr-tech/track-ip.git" "bash trackip"
        ;;
    10|010)
        install_tool "Dorks Eye" "https://github.com/BullsEye0/dorks-eye.git" "python3 dorks-eye.py"
        ;;
    11|011)
        install_tool "HackerPro" "https://github.com/jaykali/hackerpro.git" "python2 hackerpro.py"
        ;;
    12|012)
        install_tool "RED HAWK" "https://github.com/Tuhinshubhra/RED_HAWK" "php rhawk.php"
        ;;
    13|013)
        install_tool "Virus Crafter" "https://github.com/Devil-Tigers/TigerVirus" "bash app.sh"
        ;;
    14|014)
        install_tool "Website Info" "https://github.com/king-hacking/info-site.git" "bash info.sh"
        ;;
    15|015)
        install_tool "BadMod" "https://github.com/MrSqar-Ye/BadMod.git" "php BadMod.php"
        ;;
    16|016)
        install_tool "Facebash" "https://github.com/fu8uk1/facebash" "./facebash.sh"
        ;;
    17|017)
        install_tool "DARK ARMY" "https://github.com/D4RK-4RMY/DARKARMY" "python2 darkarmy.py"
        ;;
    18|018)
        install_tool "Auto IP Changer" "https://github.com/FDX100/Auto_Tor_IP_changer.git" "python3 install.py"
        ;;
    19|019)
        install_tool "WiFi Deauther" "https://github.com/A-Rithy/NEY_DoS.git" "sudo python3 NEY_DoS.py"
        ;;
    20|020)
        install_tool "SQL Scanner" "https://github.com/sqlmapproject/sqlmap" "python sqlmap.py --wizard"
        ;;
    *)
        echo -e "${RED}[!] Invalid option! Please try again.${NC}"
        sleep 1
        clear
        ./neurohexa.sh
        ;;
esac