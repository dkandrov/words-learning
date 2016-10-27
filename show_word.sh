#!/bin/bash

dirname=$(dirname "`readlink -f "$0"`")

tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
    dirname=$PWD/$dirname
fi

WORDS_FILE=$dirname/words.txt

NUM_WORDS=`cat $WORDS_FILE|wc -l`

NUM_WORD_TO_SHOW=`shuf -i 2-$NUM_WORDS -n 1`

WORD_TO_SHOW=`head -$NUM_WORD_TO_SHOW $WORDS_FILE | tail -1`

EN_WORD=`echo $WORD_TO_SHOW | cut -d ";" -f1`
TRANSCRIPTION=`echo $WORD_TO_SHOW | cut -d ";" -f2`
RU_WORD=`echo $WORD_TO_SHOW | cut -d ";" -f3`

#echo $EN_WORD [$TRANSCRIPTION] - $RU_WORD

LINK="<a href=\"https://www.lingvolive.com/ru-ru/translate/en-ru/$EN_WORD\">больше...</a>"

notify-send -i $dirname/en.png -t 7000 "Words learning" "<b>$EN_WORD</b> [<i>$TRANSCRIPTION</i>]"
sleep 3
notify-send -i $dirname/ru.png -t 4000 "Words learning" "$RU_WORD, $LINK"
