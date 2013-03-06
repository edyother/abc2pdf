#!/bin/bash
# convert abc to pdf
abcm2ps "$1" -O - | ps2pdf -sPAPERSIZE=a4 - > "${1/%.abc/.pdf}"

# write a midi file for each tune in the collection
abc2midi "$1" -t -n 30

# move all the midi files into their own directory
mkdir -p midi
mv *.mid midi/
