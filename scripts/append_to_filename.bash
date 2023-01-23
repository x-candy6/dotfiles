read -p "What do you want appended to each file? " appendedString
read -p "Which File Extension?(format:.ext)" extension
for f in *.$extension; do echo mv -- "$f" "${f%.extension}$appendedString.$extension"; done
