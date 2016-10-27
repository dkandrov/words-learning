# Words learning
Shows simple notifications for the study of English words

## How to use
 1. Add words to words.txt file
 2. Change your crontab: 
  - Open for editing: `crontab -e`
  - Add line: `*/10 * * * * cd /path/to/folder/words_learning/ && DISPLAY=:0 ./show_word.sh`

## Used utils or prerequisites
 - `notify-send` - showing notifications
 - `shuf` - random generator
 - `cat`, `wc`, `head`, `tail`, `cut` and `echo`  :relaxed:

## Icons
Icons are taken from the site: http://www.icondrawer.com/free.php