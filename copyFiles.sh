for files in `ls *.*`;
do
f=`echo $files | awk -F. '{print $1}'`
if [ -d $f ]
then
rm -r $f
fi
mkdir $f
cp $files $f
echo copied $files to $f
done

