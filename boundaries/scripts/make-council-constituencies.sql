	SELECT
		a.NAME,
		a.CODE,
		a.AREA_CODE,
		a.DESCRIPTIO,
		a.FILE_NAME,
		b.MS_FB AS MS_FB_PARE,
		b.MS_FB || '/' || lower(a.AREA_CODE) || ':' || lower(a.CODE) AS MS_FB,
		a.geometry
	FROM
		(SELECT * FROM district_borough_unitary_ward_region
			UNION
		SELECT * FROM unitary_electoral_division_region) AS a,
		councils_ur b
	WHERE
		ST_Within(PointOnSurface(a.geometry), b.geometry)


