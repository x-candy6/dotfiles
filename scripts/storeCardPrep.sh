#magick mogrify -path ./ -bordercolor "#7a7fe5" -border 50x50 *.jpg

#for file in *.jpg; do composite -gravity center "$file" /Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/USA.jpg "$file"; done
#magick mogrify -path ./ -gravity center -draw "image over 0,0 0,0 '/Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/logo3.png' " *

#jpegoptim --size=25% ./*.jpg
#
#NEW SCRIPT
magick mogrify -path ./ -set date:create %C -bordercolor "#7a7fe5" -border 50x50 *.jpg

#for file in *.jpg; do composite -gravity center "$file" /Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/USA.jpg "$file"; done
for file in *.jpg; do composite -gravity center "$file" /Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/lionkingbackdrop.jpg "$file"; done

magick mogrify -path ./ -set date:create %C -gravity center -draw "image over 0,0 0,0 '/Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/logo3.png' " *

echo Images Have Been Prepared!

