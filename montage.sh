#!/bin/bash

# print
dpi=300

# making a big one, in px
pixels_side21=2100
pixels_side29=2970

let "pixels_side21 *= dpi"
let "pixels_side29 *= dpi"

let "pixels_side21 /= 254"
let "pixels_side29 /= 254"

# sanity check printout
echo "Pixels per short side are $pixels_side21"
echo "Pixels per long side are $pixels_side29"

#short side number of tiles
num_of_tiles_21=2
#long side number of tiles
num_of_tiles_29=4

tilesize_21=$pixels_side21
tilesize_29=$pixels_side29

# tooo many calculations
let "tilesize_21 /= num_of_tiles_21"
let "tilesize_29 /= num_of_tiles_29"

# ironic
x="x"

# sanity check printout
echo "Geometry (tile size) is $tilesize_21$x$tilesize_29"
echo "Tiles are short x tall $num_of_tiles_21$x$num_of_tiles_29"

# let's hope you got it!

montage -geometry $tilesize_21$x$tilesize_29 -tile $num_of_tiles_21$x$num_of_tiles_29 *-mark.png montage.png

