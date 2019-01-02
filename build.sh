#!/bin/bash
 
NONE='\033[0m' # Eliminar as Cores, deixar padrão)

# Regular Colors
BLACK='\033[1;30m'       # Black
RED='\033[1;31m'         # Red
GREEN='\033[1;32m'       # Green
YELLOW='\033[1;33m'      # Yellow
BLUE='\033[1;34m'        # Blue
PURPLE='\033[1;35m'      # Purple
CYAN='\033[1;36m'        # Cyan
WHITE='\033[1;37m'       # White


#Danger/fail
printf "\n${RED}[$(date +%H:%M:%S)][ ✘ ] Agora vai ${NONE}\n"

#Sucess
printf "\n${GREEN}[$(date +%H:%M:%S)][ ✔ ] Agora vai ${NONE}\n"

# Warning
printf "\n${YELLOW}[$(date +%H:%M:%S)][ ⚠ ] Agora vai ${NONE}\n"

# Question
printf "\n${CYAN}[$(date +%H:%M:%S)][ ? ] Agora vai ${NONE}\n"

# Info
printf "\n${BLUE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}\n"


printf "\n${WHITE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}\n"
printf "\n${BLACK}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}\n"
printf "\n${PURPLE}[$(date +%H:%M:%S)][ * ] Agora vai ${NONE}\n"

function out_danger() {
 

  printf "\n${RED}[$(date +%H:%M:%S)][ ✘ ] aaaaaaaaaa ${NONE}\n"


}

 out_danger