#!/bin/bash

mkdir -p ../build/country-constituencies

ogr2ogr \
	-sql @make-country-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/country-constituencies/country-constituencies.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/country-constituencies/country-constituencies.csv \
	../build/country-constituencies/country-constituencies.shp
