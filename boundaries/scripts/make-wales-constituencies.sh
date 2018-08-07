#!/bin/bash

mkdir -p ../build/wales-constituencies

ogr2ogr \
	-sql @make-wales-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/wales-constituencies/wales-constituencies-ur.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/wales-constituencies/wales-constituencies-ur.csv \
	../build/wales-constituencies/wales-constituencies-ur.shp
