#!/usr/bin/env bash

printf "\e[31mHello World\e[0m\n"
printf "Normal \e[1mBold\e[0m\n"
printf "Normal \e[4mUnderlined\e[0m\n"


printf "\e[31mHello\e[0m\n"
printf "\033[31mHello\033[0m\n"
printf "\x1b[31mHello\x1b[0m\n"