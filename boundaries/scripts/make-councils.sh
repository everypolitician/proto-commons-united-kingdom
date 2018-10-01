#!/bin/bash

mkdir -p ../build/councils

ogr2ogr \
	-sql @make-councils.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/councils/councils-ur.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/councils/councils-ur.csv \
	../build/councils/councils-ur.shp
