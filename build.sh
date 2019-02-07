#!/bin/bash
 
NONE='\e[0m\n' # Eliminar as Cores, deixar padrão)

# Regular Colors
BLACK='\e[1;30m'       # Black
RED='\e[1;31m'         # Red
GREEN='\e[1;32m'       # Green
YELLOW='\e[1;33m'      # Yellow
BLUE='\e[1;34m'        # Blue
PURPLE='\e[1;35m'      # Purple
CYAN='\e[1;36m'        # Cyan
WHITE='\e[1;37m'       # White


IMAGE_NAME="bra-simple-java-maven"
CONTAINER_NAME="bra-simple-java-maven-container"
JAR_PATH="bra-simple-java-maven.jar"

#mvn clean package
echo "-> Removendo container:  ${CONTAINER_NAME}"
docker rm -f "${CONTAINER_NAME}" 2>/dev/null

echo "-> Construindo imagem (docker build):  ${IMAGE_NAME}"
docker build --build-arg APP_FILE="${JAR_PATH}" --build-arg APP_VERSION="1" --build-arg COMMIT_HASH="123" -t "${IMAGE_NAME}" .
retCode=$?
if [[ "${retCode}" -ne 0 ]]; then
	echo -e "\n[ERRO] docker build: ${retCode} - verifique logs acima"
	exit 1
fi

if [[ -n "${RUN}" ]]; then

	echo "-> Executando container: ${CONTAINER_NAME} porta 8080"


	docker run \
		--publish 8080:8080 \
        --name "${CONTAINER_NAME}" \
		"${IMAGE_NAME}"
	retCode=$?
	if [[ "${retCode}" -ne 130 ]]; then
		echo -e "\n[ERRO] docker run: ${retCode} - verifique logs acima"
		exit 1
	fi
fi
