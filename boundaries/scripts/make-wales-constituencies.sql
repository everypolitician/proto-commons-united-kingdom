	SELECT
		a.NAME,
		a.CODE,
		a.DESCRIPTIO,
		'country:gb/country:wls' AS MS_FB_PARE,
		'country:gb/country:wls' || '/wac:' || lower(CODE) AS MS_FB,
		ST_Buffer(a.geometry, 0)
	FROM
		scot_wales_constituencies a
	WHERE
		SUBSTR(CODE, 1, 1) = 'W'
