#!/bin/bash

TZ="$1/$2" date

if [ $? != 0 ];
then echo "Could not retrieve the date. Try again"
fi
