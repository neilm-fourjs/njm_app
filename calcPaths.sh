cd njm_app_bin
echo "../njm_resources/etc" > ../etc/resourcePath.txt
echo "../njm_resources/pics" > ../etc/imagePath.txt
find .. -maxdepth 2 -type d -name etc | cut -d'/' -f1-3 | sort | grep -v 'njm_resources' >> ../etc/resourcePath.txt
find .. -maxdepth 2 -type d -name pics | cut -d'/' -f1-3 | sort| grep -v 'njm_resources'  >> ../etc/imagePath.txt
echo "Resources:"
cat ../etc/resourcePath.txt
echo ""
echo "Images:"
cat ../etc/imagePath.txt
echo ""
