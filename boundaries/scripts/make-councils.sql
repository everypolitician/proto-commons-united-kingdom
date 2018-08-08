	SELECT
		replace(replace(a.NAME, ' Boro', 'Borough'), ' (B)', '') AS NAME,
		a.CODE,
		a.AREA_CODE,
		a.DESCRIPTIO,
		a.FILE_NAME,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'E' THEN 'country:gb/country:eng'
			WHEN 'S' THEN 'country:gb/country:sct'
			WHEN 'W' THEN 'country:gb/country:wls'
		END AS MS_FB_PARE,
		CASE SUBSTR(CODE, 1, 1)
			WHEN 'E' THEN 'country:gb/country:eng/' || lower(a.AREA_CODE) || ':' || lower(CODE)
			WHEN 'S' THEN 'country:gb/country:sct/' || lower(a.AREA_CODE) || ':' || lower(CODE)
			WHEN 'W' THEN 'country:gb/country:wls/' || lower(a.AREA_CODE) || ':' || lower(CODE)
		END AS MS_FB,
		a.geometry
	FROM
		district_borough_unitary_region a
	WHERE
		a.CODE IN ('E09000003', 'N09000003', 'E08000025', 'E08000032', 'E09000005', 'E06000043', 'E06000023', 'E09000006', 'E09000007', 'W06000015', 'E08000026', 'E09000008', 'E06000015', 'E08000017', 'E09000009', 'S12000036', 'E09000010', 'S12000046', 'E09000011', 'E09000012', 'E09000014', 'E09000016', 'E09000017', 'E09000018', 'E06000010', 'E09000022', 'E08000035', 'E06000016', 'E09000023', 'E08000012', 'E08000003', 'E06000042', 'E08000021', 'E09000025', 'E06000018', 'E06000026', 'E09000026', 'E08000018', 'E08000006', 'E08000019', 'E06000045', 'E09000028', 'E06000021', 'E08000024', 'E09000030', 'E08000036', 'E09000031', 'E09000032', 'E08000031', 'E09000013', 'E09000024', 'E09000027', 'E09000033', 'E09000020', 'E09000004', 'E09000029', 'E09000015', 'E09000021', 'E09000019', 'E09000001', 'E09000002')
UNION
	SELECT
		a.LGDNAME AS NAME,
		a.LGDCode AS CODE,
		'LGD' AS AREA_CODE,
		'Local Government District' AS DESCRIPTIO,
		'BELFAST' AS FILE_NAME,
		'country:gb/province:nir' AS MS_FB_PARE,
		'country:gb/province:nir/lgd:' || lower(LGDCode) AS MS_FB,
		a.geometry
	FROM
		ni_local_government_districts a
	WHERE
		LGDCode = 'N09000003'

