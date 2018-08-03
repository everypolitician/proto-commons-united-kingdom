	SELECT
		a.NAME,
		a.CODE,
		a.DESCRIPTIO,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'S' THEN 'country:gb/country:sct'
			WHEN 'W' THEN 'country:gb/country:wls'
		END AS MS_FB_PARE,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'S' THEN 'country:gb/country:sct' || '/spc-constituency:' || lower(CODE)
			WHEN 'W' THEN 'country:gb/country:wls' || '/wac-constituency:' || lower(CODE)
		END AS MS_FB,
		a.geometry
	FROM
		scot_wales_constituencies a
UNION
	SELECT
		a.PC_NAME AS NAME,
		a.PC_ID AS CODE,
		'Northern Ireland Assembly Constituency' as DESCRIPTIO,
		'country:gb/province:nir' AS MS_FB_PARE,
		'country:gb/province:nir/nia-constituency:' || lower(PC_ID) AS MS_FB,
		a.geometry
	FROM
		ni_westminster_constituencies a
