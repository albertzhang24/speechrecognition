#! /bin/sh

count=0
while [ $count -le 17 ]; do
  chmod 755 ./asr.sh
  ./asr.sh

# Pipe data into the while loop
done < /Users/albertzhang/desktop/text_files/biggerintervals.txt
