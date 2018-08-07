#!/bin/bash

mkdir -p ../build/flacs

ogr2ogr \
	-sql @make-flacs.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/flacs/flacs.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/flacs/flacs.csv \
	../build/flacs/flacs.shp
