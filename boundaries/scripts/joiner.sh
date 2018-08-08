#!/bin/bash

BASE=$1
CSV=${BASE}.csv
INSHP=${BASE}-ur.shp
OUTSHP=${BASE}.shp


ogr2ogr \
	-sql "select '${BASE}-ur'.*, _OGR_1.* from '${BASE}-ur' left join '${CSV}'.'${BASE}' on '${BASE}-ur'.MS_FB = _OGR_1.MS_FB" \
	-dialect sqlite \
	${OUTSHP} \
	${INSHP}
