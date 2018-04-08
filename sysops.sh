# Check disk size for all directories 

du -ah --max-depth=1  /var/lib/mongodb | sort -hr

#Find and delete files older than 60 days
find /var/mqm/errors -name "AMQ*.FDC" -mtime +60 -exec rm -f "{}" \; #exec command can be used to do any other activities such as zip

#Find older than 60 days files
find /var/mqm/errors -name "AMQ*.FDC" -mtime +60

#Find duplicates files with same name but different case
find . | sort -f | uniq -di

#Find difference of files between 2 directories directory
diff --brief -qr  $1 $2  > result.txt


