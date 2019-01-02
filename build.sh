#!/bin/bash
 
NONE='\e[0m\n' # Eliminar as Cores, deixar padrão)

# Regular Colors
BLACK='\e[30m'       # Black
RED='\e[31m'         # Red
GREEN='\e[32m'       # Green
YELLOW='\e[33m'      # Yellow
BLUE='\e[34m'        # Blue
PURPLE='\e[35m'      # Purple
CYAN='\e[36m'        # Cyan
WHITE='\e[37m'       # White


#Danger/fail
printf "\n${RED}[$(date +%H:%M:%S)][ ✘ ] Agora vai ${NONE}"

#Sucess
printf "\n${GREEN}[$(date +%H:%M:%S)][ ✔ ] Agora vai ${NONE}"

# Warning
printf "\n${YELLOW}[$(date +%H:%M:%S)][ ⚠ ] Agora vai ${NONE}"

# Question
printf "\n${CYAN}[$(date +%H:%M:%S)][ ? ] Agora vai ${NONE}"

# Info
printf "\n${BLUE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}"


printf "\n${WHITE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}"
printf "\n${BLACK}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}"
printf "\n${PURPLE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}"
printf "\n${PURPLE}[$(date +%H:%M:%S)]${BLACK}[ * ] Agora ${BLUE} vai"
printf "${NONE}"
echo
echo "What"
