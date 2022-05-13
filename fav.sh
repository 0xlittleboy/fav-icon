#!/bin/bash
read -p "Enter Favicon URL: " fav
##hash
hash=$(curl -s -L -k $fav | python3 -c 'import mmh3,sys,codecs; print(mmh3.hash(codecs.encode(sys.stdin.buffer.read(),"base64")))')
###Found
echo Generated Hash:$hash
