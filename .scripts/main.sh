#!/bin/bash

YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

repeat="Y"
while [[ "$repeat" == "Y" ]]; do
    source $MATHWIKI_DIR/.scripts/stats.sh -u
    source $MATHWIKI_DIR/.scripts/stats.sh -p
    echo ""

    echo -e "${CYAN}Actions:${NC}"
    echo -e "    ${CYAN}(1): Git${NC}"
    echo -e "    ${CYAN}(2): Search${NC}"
    echo -e "    ${CYAN}(3): Restore${NC}"
    echo -e "    ${CYAN}(4): Math links${NC}"
    echo -e "    ${CYAN}(5): Ghost links${NC}"
    echo -e "    ${CYAN}(6): Mass editing${NC}"
    echo -e "    ${CYAN}(7): Update images${NC}"
    echo -e "    ${CYAN}(8): Reset modify time${NC}"
    echo ""

    read -n 1 -ep "$(echo -e ${CYAN}"Select: [1|(1-8)]${NC} ")" action
    if [[ -z "$action" ]]; then
        action="1"
    fi
    if [[ "$action" == "q" ]]; then
        exit
    fi
    re='^[0-9]+$'
    while ( ! [[ $action =~ $re ]] ) || ( [ "$action" -lt "1" ] || [ "$action" -gt "8" ] ); do
        read -n 1 -ep "$(echo -e ${CYAN}"Select: [1|(1-8)]${NC} ")" action
        if [[ -z "$action" ]]; then
            action="1"
        fi
        if [[ "$action" == "q" ]]; then
            exit
        fi
    done

    case $action in
        "1")
            $DOTFILES_DIR/scripts/gitCommit.sh -m
        ;;
        "2")
            $MATHWIKI_DIR/.scripts/searchReplace.sh
        ;;
        "3")
            $MATHWIKI_DIR/.scripts/gitRestore.sh
        ;;
        "4")
            $MATHWIKI_DIR/.scripts/mathLinks.sh -u
            $MATHWIKI_DIR/.scripts/mathLinks.sh -n
        ;;
        "5")
            $MATHWIKI_DIR/.scripts/ghostLinks.sh
        ;;
        "6")
            $MATHWIKI_DIR/.scripts/massEditing.sh
        ;;
        "7")
            $MATHWIKI_DIR/.scripts/updateImages.sh
        ;;
        "8")
            $MATHWIKI_DIR/.scripts/resetModifyTime.sh
        ;;
    esac

    echo ""
    echo -e "${GREEN}DONE${NC}"
    echo ""

    read -n 1 -ep "$(echo -e ${CYAN}"Press [Y] to return, exiting otherwise...${NC} ")" repeat
    if [[ -z "$repeat" ]]; then
        repeat="Y"
    fi
    if [[ "$repeat" == "Y" ]]; then
        clear
    else
        exit
    fi
done
