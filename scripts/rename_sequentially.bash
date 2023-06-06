find . -name '*.jpg' | awk 'BEGIN{ a=0 }{ printf "mv \"%s\" %05d.jpg\n", $0, a++ }' | bash
