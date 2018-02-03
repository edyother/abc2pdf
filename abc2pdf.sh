#!/bin/bash
# convert abc to pdf
abcm2ps "$1" -O - | ps2pdf -sPAPERSIZE=a4 - > "${1/%.abc/.pdf}"
