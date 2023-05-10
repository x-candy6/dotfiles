magick mogrify -path ./ -bordercolor "red" -border 50x50 *.jpg
magick mogrify -path ./ -gravity center -draw "image over 0,0 0,0 '/Users/andy/Desktop/CAT-WORLD/CHILD_ORGANIZATIONS/STOREFRONT/DATA/FTP/logo3.png' " *
jpegoptim --size=50% ./*.jpg
echo Images Have Been Prepared!

