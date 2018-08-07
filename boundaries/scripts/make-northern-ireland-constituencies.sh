#!/bin/bash

mkdir -p ../build/northern-ireland-constituencies

ogr2ogr \
	-sql @make-northern-ireland-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/northern-ireland-constituencies/northern-ireland-constituencies-ur.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/northern-ireland-constituencies/northern-ireland-constituencies-ur.csv \
	../build/northern-ireland-constituencies/northern-ireland-constituencies-ur.shp
