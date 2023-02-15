for files in `ls *.*` ;
do
folder=`echo $files |awk -F. '{print $1}'`:
if [ -d $folder ]
then
rm -r $folder
fi
mkdir $folder
mv $files $folder
echo moved $files to $folder
done

