#!/bin/bash
echo "** Area Code Lookup Script **"
echo ""

# base url for the area code lookup
url="https://www.zip-codes.com/zip-code/"
#prompt user for a area code and save value to a variable 
read -p "Enter a zipcode: " zipcode

# check if a area code has been provided by user
if [ -z "$zipcode" ]; then
    echo "Please enter a area code."
# if area code is provided fetch data from the server
elif [ ! -z "$zipcode" ]; then
    curl -s dump https://www.zip-codes.com/zip-code/$zipcode/zip-code-$zipcode.asp | grep '<td class="info"' | sed s'/<[^>]*>//g' | cut -d ":" -f1,2 | head -n 7
    echo ""
    # ask user if they want to lookup another area code
    read -p "Want to lookup another area code? [y/n]  " choice
    if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
        # continue to prompt for area code until user wants to exit program
        while [ "$choice" = "y" ] || [ "$choice" = "Y" ]; do
            read -p "Enter a area code: " zipcode
            curl -s dump https://www.zip-codes.com/zip-code/$zipcode/zip-code-$zipcode.asp | grep '<td class="info"' | sed s'/<[^>]*>//g' | cut -d ":" -f1,2 | head -n 7
            read -p "Want to lookup another area code? [y/n]  " choice
        done
    else
        echo "Goodbye!"
    fi
    
fi

