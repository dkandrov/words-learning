#!/bin/bash

WORDS_FILE=words.txt

NUM_WORDS=`cat $WORDS_FILE|wc -l`

NUM_WORD_TO_SHOW=`shuf -i 2-$NUM_WORDS -n 1`

WORD_TO_SHOW=`head -$NUM_WORD_TO_SHOW $WORDS_FILE | tail -1`

EN_WORD=`echo $WORD_TO_SHOW | cut -d ";" -f1`
TRANSCRIPTION=`echo $WORD_TO_SHOW | cut -d ";" -f2`
RU_WORD=`echo $WORD_TO_SHOW | cut -d ";" -f3`

echo $EN_WORD [$TRANSCRIPTION] - $RU_WORD
LINK="<a href=\"https://www.lingvolive.com/ru-ru/translate/en-ru/$EN_WORD\">больше...</a>"
notify-send "Words learning" "<b>$EN_WORD</b> [<i>$TRANSCRIPTION</i>] - $RU_WORD, $LINK"