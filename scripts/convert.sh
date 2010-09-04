#!/bin/sh

mkdir -p pfb

echo "Creating PostScript fonts ..."

for font in otf/*.otf
do
  base=$(basename "$font" .otf)
  cfftot1    "$font"     "pfb/$base.pfb"
  t1dotlessj "pfb/$base.pfb" "pfb/${base}LCDFJ.pfb"
done

