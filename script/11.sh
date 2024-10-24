#!Write a shell script to check whether a given file is regular file or directory file.
file=$1
if [ -f $file ]; then
    echo "$file is a regular file."
elif [ -d $file ]; then
    echo "$file is a directory file."
else
    echo "$file is neither a regular file nor a directory"
fi