#!/bin/bash
 
NONE='\e[0m' # Eliminar as Cores, deixar padrão)

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