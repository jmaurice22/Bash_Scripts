#!/bin/bash

data=$1

# echo $data |  tr -d'' | tr "$%" " " 

echo $data  | tr -d ' ' | tr '$%' ' o'