SELECT
	a.PC_NAME AS NAME,
	a.PC_ID AS CODE,
	'Northern Ireland Assembly Constituency' as DESCRIPTIO,
	'country:gb/province:nir' AS MS_FB_PARE,
	'country:gb/province:nir/niac:' || lower(PC_ID) AS MS_FB,
	ST_Buffer(a.geometry, 0)
FROM
	ni_westminster_constituencies a
