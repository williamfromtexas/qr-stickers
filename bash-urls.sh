#!/bin/bash

# the desired URL, split in parts at the advancing number
url='http://www.shookdown.es/video/?utm_source='
x=0
url2='&utm_medium=qr&utm_campaign=gracia'

echo $url$x
	for (( x; x<5; x++ ))
        do
        echo $x

# the encode with options
        qrencode -o FILENAME-$x.png -s 6 -l H -v 10 $url$x$url2

    done
