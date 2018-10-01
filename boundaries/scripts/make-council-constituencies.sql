	SELECT
		a.NAME,
		a.CODE,
		-- a.AREA_CODE,
		-- a.DESCRIPTIO,
		-- a.FILE_NAME,
		b.MS_FB || '/' || lower(a.AREA_CODE) || ':' || lower(a.CODE) AS MS_FB,
		b.MS_FB AS MS_FB_PARE,
		a.geometry
	FROM
		(SELECT * FROM district_borough_unitary_ward_region
			UNION
		SELECT * FROM unitary_electoral_division_region) AS a,
		councils b
	WHERE
		ST_Within(PointOnSurface(a.geometry), b.geometry)

UNION
	SELECT
		'Balmoral ' as NAME,
		'N10000301' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000301' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000311', 'N08000326', 'N08000337', 'N08000339', 'N08000356')

UNION
	SELECT
		'Black Mountain' as NAME,
		'N10000302' as CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000302' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000301', 'N08000305', 'N08000307', 'N08000319', 'N08000325', 'N08000349', 'N08000354')

UNION
	SELECT
		'Botanic' as NAME,
		'N10000303' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000303' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000312', 'N08000315', 'N08000342', 'N08000352', 'N08000358')

UNION
	SELECT
		'Castle' as NAME,
		'N10000304' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000304' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000309', 'N08000314', 'N08000316', 'N08000322', 'N08000328', 'N08000332')

UNION
	SELECT
		'Collin' as NAME,
		'N10000305' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000305' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000323', 'N08000334', 'N08000335', 'N08000343', 'N08000350', 'N08000355')

UNION
	SELECT
		'Court' as NAME,
		'N10000306' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000306' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000303', 'N08000318', 'N08000324', 'N08000327', 'N08000348', 'N08000360')

UNION
	SELECT
		'Lisnasharragh' as NAME,
		'N10000307' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000307' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000321', 'N08000331', 'N08000338', 'N08000341', 'N08000344', 'N08000345')

 UNION
	SELECT
		'Oldpark' as NAME,
		'N10000308' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000308' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000302', 'N08000306', 'N08000317', 'N08000336', 'N08000340', 'N08000357')

UNION
	SELECT
		'Ormiston' as NAME,
		'N10000309' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000309' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE WARDCODE in ('N08000310', 'N08000329', 'N08000330', 'N08000333', 'N08000346', 'N08000347', 'N08000351')

UNION
	SELECT
		'Titanic' as NAME,
		'N10000310' AS CODE,
		'country:gb/province:nir/lgd:n09000003/lea:N10000310' AS MS_FB,
		'country:gb/province:nir/lgd:n09000003' AS MS_FB_PARE,
		ST_Buffer(ST_Buffer(ST_Collect(ni_wards.geometry), 0.0001), -0.0001) as geometry
	FROM
		ni_wards
	WHERE
		WARDCODE in ('N08000304', 'N08000308', 'N08000313', 'N08000320', 'N08000353', 'N08000359')


