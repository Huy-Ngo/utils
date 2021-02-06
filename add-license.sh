name="Ngô Ngọc Đức Huy"
year=`date "+%Y"`
filename=LICENSE
if [ -z "$1" ]
then
	printf "Please input a license name: "
	read license
else
	license=$1
fi
echo $license
if [ $license = "mit" ]
then
	cat ~/utils/licenses/mit.txt | sed s/YEAR/$year/ | sed "s/NAME/$name/" > $filename
elif [ $license = "agpl" ]
then
	cp ~/utils/licenses/agpl-3.0.txt $filename
elif [ $license = "gpl" ]
then
	cp ~/utils/licenses/gpl-3.0.txt $filename
elif [ $license = "lgpl" ]
then
	cp ~/utils/licenses/lgpl-3.0.txt $filename
elif [ $license = "mpl" ]
then
	cp ~/utils/licenses/mpl-2.0.txt $filename
elif [ $license = "apache" ]
then
	cp ~/utils/licenses/apache-2.0.txt $filename
else
	echo "Invalid license name."
fi
