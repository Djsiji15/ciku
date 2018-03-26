#!/bin/sh
echo  "welcome to the ciku"
echo  "plz add the word,press q to quit"
touch base.txt;
while read word
do
	if [ "$word" = "q" ]; then
		exit;
	else
	  echo $word >> base.txt
	fi
done

	
