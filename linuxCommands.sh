# Check disk size for all directories 

du -ah --max-depth=1  /var/lib/mongodb | sort -hr
