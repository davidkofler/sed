# substitute one with ONE in file file and print it to stdout
sed 's/one/ONE/' <file
# substitute string with slash in it /usr/local/bin -> /common/bin
sed 's/\/usr\/local\/bin/\/common\/bin/' <old >new
# alternative with _ as delimiter
sed 's_/usr/local/bin_/common/bin_' <old >new
#anything goes as a delimiter :, |, /, \

# substitue word and save changes in original file
sed -i 's/old/new/' file
# same as above, but save the original file in file.bak
sed -i.bak 's/old/new/'  file
# substitute only in the n'th line e.g. 4 line:
sed -i '4s/old/new/' file
# all lines except the 4 line
sed -i '4!s/old/new/' file
# limit sed to lines 1,10
sed -i '1,10s/old/new/' file
# print first line of file
sed -n '1p' file
# print last line of file
sed -n '$p' file
# print lines 5-10 of file
sed -n '5,10p'


# double the first number of a line3, & operator stands for found pattern
echo "123 abc" | sed 's/[0-9]*/& &/'

# * star means zero or more matches
# + plus means one or more matches