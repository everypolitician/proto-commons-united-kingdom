import fiona
import requests

from fiona.crs import from_epsg
from shapely.ops import unary_union
from shapely.geometry import shape, mapping


def ons_boundary(code):
    url = 'http://statistics.data.gov.uk/boundaries/{}.json'.format(code)
    return requests.get(url)


city_parts = {
    'Greater London': ['E12000007'],
    'Greater Manchester': ['E08000002', 'E08000001', 'E08000003', 'E08000004',
                           'E08000005', 'E08000006', 'E08000007', 'E08000008',
                           'E08000009', 'E08000010'],
    'Liverpool City Region': ['E08000015', 'E08000013', 'E08000014',
                              'E08000012', 'E08000011', 'E06000006'],
    'Cambridgeshire and Peterborough': ['E10000003', 'E06000031'],
    'West of England': ['E06000023', 'E06000025', 'E06000022'],
    'Tees Valley': ['E06000005', 'E06000001', 'E06000002', 'E06000004',
                    'E06000003'],
    'West Midlands': ['E08000030', 'E08000028', 'E08000025', 'E08000029',
                      'E08000026', 'E08000031', 'E08000027']
}

city_attribs = {'Greater London': {
    'MS_FB': 'country:gb/country:eng/region:E12000007',
    'WIKIDATA': 'Q23306'
},
    'Greater Manchester': {
    'MS_FB': 'country:gb/country:eng/ca:greater-manchester',
    'WIKIDATA': 'Q56856017'
},
    'Liverpool City Region': {
    'MS_FB': 'country:gb/country:eng/ca:liverpool-city',
    'WIKIDATA': 'Q15242530'
},
    'Cambridgeshire and Peterborough': {
    'MS_FB': 'country:gb/country:eng/ca:cambridgeshire-and-peterborough',
    'WIKIDATA': 'Q56855521'
},
    'West of England': {
    'MS_FB': 'country:gb/country:eng/ca:west-of-england',
    'WIKIDATA': 'Q56840292'
},
    'Tees Valley': {
    'MS_FB': 'country:gb/country:eng/ca:tees-valley',
    'WIKIDATA': 'Q3982570'
},
    'West Midlands': {
    'MS_FB': 'country:gb/country:eng/ca:west-midlands',
    'WIKIDATA': 'Q56856175'
}
}

metro_geoms = {}
metro_attribs = {}
for city in city_parts:
    shapes = [shape(ons_boundary(code).json()['geometry'])
              for code in city_parts[city]]
    metro_geoms[city] = dissolved_geom = mapping(unary_union(shapes))
    metro_attribs[city] = {
        'NAME': city,
        'MS_FB_PARE': 'country:gb/country:eng',
        'MS_FB': city_attribs[city]['MS_FB'],
        'WIKIDATA': city_attribs[city]['WIKIDATA']
    }

schema = {
    'geometry': 'MultiPolygon',
    'properties': {
        'NAME': 'str',
        'MS_FB_PARE': 'str',
        'MS_FB': 'str',
        'WIKIDATA': 'str'
    }
}


with fiona.open('../build/metropolitan-areas/metropolitan-areas.shp', 'w',
                crs=from_epsg(4326),
                encoding='UTF-8',
                driver='ESRI Shapefile',
                schema=schema) as dst:
    for city in city_parts:
        dst.write({
            'geometry': metro_geoms[city],
            'properties': metro_attribs[city]
        })
