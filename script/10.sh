#!Write a shell script to check whether a given file has read,write or exceute permissions.
echo -n "Enter the filename : "
read file
# echo $file
if [ -e $file ];then
    echo "File Exists"
else
    echo "File dosen't exists"
fi
if [ -r $file ];then
    echo "this file is read permissions"
else
    echo "this file do not have read permissions"
fi
if [ -w $file ];then
    echo "this file is write permissions"
else
    echo "this file do not have write permissions"
fi
if [ -x $file ];then
    echo "this file is execute permissions"
else
    echo "this file do not have execute permissions"
fi

