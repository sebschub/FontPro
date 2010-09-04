@echo off

mkdir pfb

echo "Creating PostScript fonts ..."

for %%i in (otf/*.otf) do cfftot1    otf/%%i       pfb/%%~ni.pfb
for %%i in (otf/*.otf) do t1dotlessj pfb/%%~ni.pfb pfb/%%~niLCDFJ.pfb

