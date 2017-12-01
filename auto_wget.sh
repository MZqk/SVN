#!/bin/sh
#shell script to auto download useful freeware from Internet
#written by XiaoMiao (C) 2009
 
echo "auto download some rpm packages from Internet begin..."
if [ ! -f packages.lst ]; then
            echo "Error: file packages.lst not exist."
                    exit -1
fi

for FILENAME in `cat packages.lst`
do
    echo "download $FILENAME begin..."
    wget $FILENAME
    echo "download $FILENAME end..."
done
                      echo "done"
                      exit 0
