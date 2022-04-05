#!/bin/bash
echo "** Zip Code Lookup Script **"
echo ""

# base url for the zipcode lookup
url="https://www.zip-codes.com/zip-code/"
#prompt user for a zipcode and save value to a variable 
read -p "Enter a zipcode: " zipcode

# check if a zipcode has been provided by user
if [ -z "$zipcode" ]; then
    echo "Please enter a zipcode."
# if zipcode is provided fetch data from the server
elif [ ! -z "$zipcode" ]; then
    curl -s dump https://www.zip-codes.com/zip-code/$zipcode/zip-code-$zipcode.asp | grep '<td class="info"' | sed s'/<[^>]*>//g' | cut -d ":" -f1,2 | head -n 3
fi

