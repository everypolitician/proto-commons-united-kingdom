	SELECT
		a.NAME,
		a.CODE,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'E' THEN 'country:gb/country:eng'
			WHEN 'S' THEN 'country:gb/country:sct'
			WHEN 'W' THEN 'country:gb/country:wls'
		END AS MS_FB_PARE,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'E' THEN 'country:gb/country:eng' || '/westminster-constituency:' || lower(CODE)
			WHEN 'S' THEN 'country:gb/country:sct' || '/westminster-constituency:' || lower(CODE)
			WHEN 'W' THEN 'country:gb/country:wls' || '/westminster-constituency:' || lower(CODE)
		END AS MS_FB,
		a.geometry
	FROM
		gb_westminster_constituencies a
UNION
	SELECT
		a.PC_NAME AS NAME,
		a.PC_ID AS CODE,
		'country:gb/province:nir' AS MS_FB_PARE,
		'country:gb/province:nir/westminster-constituency:' || lower(PC_ID) AS MS_FB,
		a.geometry
	FROM
		ni_westminster_constituencies a
