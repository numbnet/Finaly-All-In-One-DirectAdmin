#!/bin/bash
tim_1="flatsome-child"
tim_2="web2s-vn"
tim_3="web-khoi-nghiep"
tim_4="w2steam"
tim_4="vscn"
tim_5="wens-vn"
tim_6="rocketweb-vn"
thay="cungcapweb-com"
path="/home/cungcapweb/domains/cungcapweb.com/_trangweb/builder/domains/"
# Loop through /home directory
for D in $path*; do
	if [ -d "${D}" ]; then #If a directory
		domain=${D##*/} # Domain name
		thu_muc_moi=$domain/public_html/wp-content/themes/$thay
        thu_muc1=$domain/public_html/wp-content/themes/$tim_1
		thu_muc2=$domain/public_html/wp-content/themes/$tim_2
		thu_muc3=$domain/public_html/wp-content/themes/$tim_3
		thu_muc4=$domain/public_html/wp-content/themes/$tim_4
		thu_muc5=$domain/public_html/wp-content/themes/$tim_5
		thu_muc6=$domain/public_html/wp-content/themes/$tim_6
       
		mv $path$thu_muc1 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc1 qua thu muc moi " $thu_muc_moi
		mv $path$thu_muc2 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc2 qua thu muc moi " $thu_muc_moi
		mv $path$thu_muc3 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc3 qua thu muc moi " $thu_muc_moi
		mv $path$thu_muc4 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc4 qua thu muc moi " $thu_muc_moi
		mv $path$thu_muc5 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc5 qua thu muc moi " $thu_muc_moi	
		mv $path$thu_muc6 $path$thu_muc_moi 2>/dev/null
		echo "Chep xong thu_muc cu $thu_muc6 qua thu muc moi " $thu_muc_moi	
	fi
done
find /home/cungcapweb/domains -name ".DS_Store" -exec rm -rf {} \;
find /home/cungcapweb/domains -type d -name "__MACOSX" -exec rm -rf {} +;
echo "xong roi"

