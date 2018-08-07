#!/bin/bash

mkdir -p ../build/scotland-parliament-constituencies

ogr2ogr \
	-sql @make-scotland-parliament-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/scotland-parliament-constituencies/scotland-parliament-constituencies-ur.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/scotland-parliament-constituencies/scotland-parliament-constituencies-ur.csv \
	../build/scotland-parliament-constituencies/scotland-parliament-constituencies-ur.shp
