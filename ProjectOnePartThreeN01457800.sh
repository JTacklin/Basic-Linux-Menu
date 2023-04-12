#!/bin/bash
# Justin Tackling (N01457800)

# Check that both parameters were provided
FILEPATH="${1}${2}"
if [[ -f $FILEPATH ]] 
then

#showing permissions/properties of the file 
echo "File Properties:"
ls -l $FILEPATH


#checking how many lines exist in file
echo "Number of lines: "
wc -l < $FILEPATH

#printing out tail/last ten lines
echo "Last 10 Lines: "
tail $FILEPATH

#if file doesn't exist
else
echo "File does not exist!"
fi
