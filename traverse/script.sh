
# See http://stackoverflow.com/questions/5119946/find-exec-with-multiple-commands
# for more information about find

# Display recursively all the lines containing 'function' in the project folder
# {} corresponds to the file name
find . -not -path "*/node_modules/*" -name '*.js' \
       -exec echo {} \;\
       -exec grep function {} \;

# Convert CRLF to LF in all files
find . -not -path "*/node_modules/*" -name '*.js' \
       -exec perl -pi -e 's/\r\n/\n/g' {} \;

# Remove all ; at the end of lines
find . -not -path "*/node_modules/*" -name '*.js' \
       -exec perl -pi -e 's/;$//g' {} \;
