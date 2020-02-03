#!/bin/bash
if [ ! -f ./canyonlands.png ]; then
  echo "canyonlands.png not found. No action taken"
  exit
fi
gdal2tiles.py -p raster -z 2-6 -w none canyonlands.png
find ./canyonlands/ -type f -name '*.png' -exec pngquant {} --ext .png -f -s1 \;
