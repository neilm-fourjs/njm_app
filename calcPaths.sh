cd njm_app_bin
echo "../njm_resources/etc" > ../resources/resourcePath.txt
echo "../njm_resources/pics" > ../resources/imagePath.txt
find .. -maxdepth 2 -type d -name etc | cut -d'/' -f1-3 | sort | grep -v 'njm_resources' >> ../resources/resourcePath.txt
find .. -maxdepth 2 -type d -name pics | cut -d'/' -f1-3 | sort| grep -v 'njm_resources'  >> ../resources/imagePath.txt
echo "Resources:"
cat ../resources/resourcePath.txt
echo ""
echo "Images:"
cat ../resources/imagePath.txt
echo ""
