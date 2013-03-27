#!/bin/bash

# into the project folder
cd png_to_pdf_folder
FILES=$( find . -type f -name "*png" | cut -d/ -f 2)

# make a temp to mogrify in
mkdir temp && cd temp

for file in $FILES; do
    BASE=$(echo $file | sed 's/.png//g');
    convert ../$BASE.png $BASE.pdf;
    done &&

# who wants sheets 
pdftk *pdf cat output ../FINAL_NAME.pdf &&

# kill temp
cd .. && rm -rf temp
