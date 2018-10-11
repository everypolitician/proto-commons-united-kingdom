	SELECT
		'Barnet and Camden' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000001' AS MS_FB,
		'Q2884679' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000003', 'E09000007')
UNION
	SELECT
		'Bexley and Bromley' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000002' AS MS_FB,
		'Q2900428' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000004', 'E09000006')
UNION
	SELECT
		'Brent and Harrow' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000003' AS MS_FB,
		'Q15078119' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000005' ,'E09000015')
UNION
	SELECT
		'City and East' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000004' AS MS_FB,
		'Q2974584' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000002', 'E09000001', 'E09000025', 'E09000030')
UNION
	SELECT
		'Croydon and Sutton' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000005' AS MS_FB,
		'Q3005479' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000008', 'E09000029')
UNION
	SELECT
		'Ealing and Hillingdon' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000006' AS MS_FB,
		'Q2388154' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000009', 'E09000017')
UNION
	SELECT
		'Enfield and Haringey' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000007' AS MS_FB,
		'Q3054197' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000010', 'E09000014')
UNION
	SELECT
		'Greenwich and Lewisham' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000008' AS MS_FB,
		'Q3116153' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000011', 'E09000023')
UNION
	SELECT
		'Havering and Redbridge' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000009' AS MS_FB,
		'Q3128701' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000016', 'E09000026')
UNION
	SELECT
		'Lambeth and Southwark' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000010' AS MS_FB,
		'Q3216654' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000022', 'E09000028')
UNION
	SELECT
		'Merton and Wandsworth' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000011' AS MS_FB,
		'Q3306662' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000024', 'E09000032')
UNION
	SELECT
		'North East' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000012' AS MS_FB,
		'Q3344113' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000012', 'E09000019', 'E09000031')
UNION
	SELECT
		'South West' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000013' AS MS_FB,
		'Q11799091' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000018', 'E09000021', 'E09000027')
UNION
	SELECT
		'West Central' AS NAME,
		'country:gb/country:eng/region:e12000007' AS MS_FB_PARE,
		'country:gb/country:eng/region:e12000007/la-constituency:e32000014' AS MS_FB,
		'Q3567405' AS WIKIDATA,
		ST_Buffer(ST_Collect(a.geometry), 0) as geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE in ('E09000013', 'E09000020', 'E09000033')

