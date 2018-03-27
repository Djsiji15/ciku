#!/bin/sh
touch base.txt

if [ -e config.txt ];then    #if config file not exist, creative it
  echo "reading the file"
else
  touch config.txt
  echo "creating a new config file"
  echo "words=0" >> config.txt  
fi

num=`sed '/^words=/!d;s/.*=//' config.txt`  #read the config file
if [ $num -g 0 ]; then
	echo "all words are:"$num
else
	echo "no word in ciku"
fi

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

	
