#*Write a shell script which displays a list of all files in the current directory to which ownes has read write and execute permissions. 
for file in *;do
    if [ -f "$file" ];then
                if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ];then
                    echo "$file"
                fi
    fi
done