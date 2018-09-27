#!/bin/bash

mkdir -p ../build/council-constituencies

ogr2ogr \
	-sql @make-council-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/council-constituencies/council-constituencies-ur.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/council-constituencies/council-constituencies-ur.csv \
	../build/council-constituencies/council-constituencies-ur.shp
