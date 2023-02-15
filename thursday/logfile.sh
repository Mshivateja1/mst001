for file in `ls*.log` ;
do
folder =`echo $file |awk -F.'{print $1}'`;
mkdir $folder;
cp $file $folder;
echo copied $file to $folder;
done


