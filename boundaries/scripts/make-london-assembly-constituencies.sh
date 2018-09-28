#!/bin/bash

mkdir -p ../build/london-assembly-constituencies

ogr2ogr \
	-sql @make-london-assembly-constituencies.sql \
	-dialect sqlite \
	-t_srs EPSG:4326 \
	../build/london-assembly-constituencies/london-assembly-constituencies.shp \
	../source/source.vrt \
	-lco ENCODING=UTF-8

ogr2ogr \
	-f "CSV" \
	../build/london-assembly-constituencies/london-assembly-constituencies.csv \
	../build/london-assembly-constituencies/london-assembly-constituencies.shp
