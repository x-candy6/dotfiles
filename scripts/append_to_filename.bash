read -p "Enter a string to be appended: " appendedString; read -p "Enter fileextension(ext without the dot; i.e. jpg mp3):" fileext #read variables
for f in *.$fileext; do echo mv -- "$f" "${f%.$fileext}$appendedString.$fileext" | bash; done #rename files

