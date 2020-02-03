#!/bin/bash
if [ ! -f ./islands_height.png ]; then
  echo "islands_height.png not found. No action taken"
  exit
fi
gdal2tiles.py -p raster -z 2-6 -w none islands_height.png
find ./islands_height/ -type f -name '*.png' -exec pngquant {} --ext .png -f -s1 \;
