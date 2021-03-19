#!/usr/bin/env bash

RESET="\033[0m"
RED="\033[1;31m"
YELLOW="\033[1;33m"
GIT_PATH="git -C ${HOME}/GitHub/$1"
DIRTY_FILES=$(${GIT_PATH} status --porcelain | awk '{print $2}')
ACTIVE_BRANCH=$(${GIT_PATH} branch | sed -n -e 's/^\* \(.*\)/\1/p')

if [[ ${DIRTY_FILES} ]]; then
	echo -e "${RED}Deal with:\n\n${YELLOW}${DIRTY_FILES}${RESET}\n\n${RED}before updating the repo."

else
	${GIT_PATH} checkout main &> /dev/null
	${GIT_PATH} fetch upstream &> /dev/null
	${GIT_PATH} rebase -Xtheirs upstream/main &> /dev/null
	${GIT_PATH} push &> /dev/null
	${GIT_PATH} checkout ${ACTIVE_BRANCH} &>/dev/null
	echo -e "Done!"
fi

