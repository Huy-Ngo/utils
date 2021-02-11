name="Ngô Ngọc Đức Huy"
year=`date "+%Y"`
printf "Please input a license name: "
read license
printf "Please input the language: "
read language
printf "Please input the project name: "
read project
if [ $license = "agpl" ]
then
	license="Affero General Public License"
elif [ $license = "gpl" ]
then
	license="General Public License"
elif [ $license = "lgpl" ]
then
	license="Lesser General Public License"
else
	echo "Invalid license name."
fi
cat ~/utils/notices/notice.$language | sed "s/FULL_LICENSE_NAME/$license/" \
	| sed s/YEAR/$year/ | sed "s/AUTHOR/$name/" \
	| sed "s/PROJECT_NAME/$project/"
