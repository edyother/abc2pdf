#!/bin/bash

# Script for convert a collection tunes written in abc format to pdf and midi

a=$(basename $1 .abc)

## Writes abc file to post script

abcm2ps $a.abc -O $a.ps

## Writes post script to pdf

ps2pdf -sPAPERSIZE=a4 $a.ps

## Remove post script

rm $a.ps

## Writes a midi file for each tune in collection. -t Makes each midi file name the tune name rather than a number. -n 30 Allows the file names to be up to 30 characters long.

abc2midi $a.abc -t -n 30

## Moves all the midi files into their own directory if one exists, if not, it makes the directory and moves them in.

if [ -d midi ]; then
	mv *.mid midi
else mkdir midi
	mv *.mid midi	
fi
