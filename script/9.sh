file1=$1
file2=$2

if [ ! -e "$file1" ] || [ ! -e "$file2" ];
    then
        echo "One or both files do not exist."
fi
if cmp -s "$file1" "$file2";then
    echo "The contents of $file1 and $file2 are the same.Deleteing the files."
    rm "$file2" 
else
    echo "The content of $file1 and $file2 are different.No files were deleted."
fi