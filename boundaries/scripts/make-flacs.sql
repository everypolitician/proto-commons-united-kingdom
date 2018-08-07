	SELECT
		'England' AS NAME,
		'England' AS NAME_LOCAL,
		'country:gb' AS MS_FB_PARE,
		'country:gb/country:eng' AS MS_FB,
		'Q21' AS WIKIDATA,
		ST_Buffer(ST_UNION(a.geometry), 0) AS geometry
	FROM
		euro_regions a
	WHERE
		a.NAME IN ('East Midlands Euro Region',
				   'Eastern Euro Region',
				   'London Euro Region',
				   'North East Euro Region',
				   'North West Euro Region',
				   'South East Euro Region',
				   'South West Euro Region',
				   'West Midlands Euro Region',
				   'Yorkshire and the Humber Euro Region')
UNION
	SELECT
		'Northern Ireland' AS NAME,
		'Tuaisceart Éireann/Norlin Airlann' AS NAME_LOCAL,
		'country:gb' AS MS_FB_PARE,
		'country:gb/province:nir' AS MS_FB,
		'Q26' AS WIKIDATA,
		ST_Buffer(ST_UNION(a.geometry), 0) AS geometry
	FROM
		ni_country a
UNION
	SELECT
		'Scotland' AS NAME,
		'Alba'  AS NAME_LOCAL,
		'country:gb' AS MS_FB_PARE,
		'country:gb/country:sct' AS MS_FB,
		'Q22' AS WIKIDATA,
		ST_Buffer(ST_UNION(a.geometry), 0) AS geometry
	FROM
		euro_regions a
	WHERE
		a.NAME = 'Scotland Euro Region'
UNION
	SELECT
		'Wales' AS NAME,
		'Cymru'  AS NAME_LOCAL,
		'country:gb' AS MS_FB_PARE,
		'country:gb/country:wls' AS MS_FB,
		'Q25' AS WIKIDATA,
		ST_Buffer(ST_UNION(a.geometry), 0) AS geometry
	FROM
		euro_regions a
	WHERE
		a.NAME = 'Wales Euro Region'
