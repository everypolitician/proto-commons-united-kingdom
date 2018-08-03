SELECT
	'United Kingdom of Great Britain and Northern Ireland' as NAME,
	'country:gb' as MS_FB,
	'Q145' as WIKIDATA,
	ST_BUFFER(ST_COLLECT(b.geometry, ST_UNION(a.geometry)), 0) as geometry
FROM
	euro_regions a,
	ni_country b
