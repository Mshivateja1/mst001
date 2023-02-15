for files in `ls *.log`;
do
folder= `echo $file | awk -F. '{print $1}'`;
mkdir $folder;
cp $files $folder;
echo copied $file to $folder;
done

