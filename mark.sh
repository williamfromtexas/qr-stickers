#!/bin/bash

# layering
for image in *.png; do
 composite -gravity center calvin-mark.png $image $image-mark.png
done
