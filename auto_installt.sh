#!/bin/sh
#shell script to auto install pakcages downloaded from Internet
echo "auto install some rpm packages from Internet begin..."
 
if [ ! -f packages.lst ]; then
            echo "Error: file packages.lst not exist."
                    exit -1
fi
                 
for FILENAME in `awk -F"/" '{print $NF}' packages.lst` 
do
                      echo "Installing $FILENAME begin..."
                        rpm -ivh $FILENAME --nodeps
                          echo "Installing $FILENAME end..."
done
                      echo "done"
                      exit 0
