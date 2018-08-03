#!/bin/bash

mkdir -p ../build/westminster-constituencies

ogr2ogr \
	-sql @make-westminster-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/westminster-constituencies/westminster-constituencies.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/westminster-constituencies/westminster-constituencies.csv \
	../build/westminster-constituencies/westminster-constituencies.shp
