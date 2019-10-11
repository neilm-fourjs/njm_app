cd njm_app_bin
find .. -maxdepth 2 -type d -name etc | cut -d'/' -f1-3 | sort  > ../etc/resourcePath.txt
find .. -maxdepth 2 -type d -name pics | cut -d'/' -f1-3 | sort  > ../etc/imagePath.txt
echo "Resources:"
cat ../etc/resourcePath.txt
echo ""
echo "Images:"
cat ../etc/imagePath.txt
echo ""
