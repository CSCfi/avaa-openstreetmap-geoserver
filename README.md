# OpenStreetMap API with GeoServer

2013-2020 these resources were used in OKM AVAA OpenStreetMap service
https://avaa.tdata.fi/web/avaa/openstreetmap

The service included OpenStreetMap data for Finland only. The service was maintained by CSC.

The repository includes:
* __GeoServer styles__, modified Mapnik OSM styles suitable for Finnish data. Styles and visible layers are dependent on map scale. Also the symbols used are included.
* __GeoServer settings__,  screen prints of different GeoServer settings used for OSM data, including EPSG:3067 grid set according to JHS 180.
* __Data update scripts__, data import script from Geofabrik to Postgis.
* __Data files for background features, not updated regularly__, the data is from 2014.

The scripts and styles were mainly written in 2013-2014, so it is possible that newer versions of GeoServer support some better options for achieving the same results. The last GeoServer version used with these styles was 2.11.1.
CSC contributors: Tanja Kantola, Seppo Jänkälä, Kylli Ek.
The scripts and styles hera are available here under CC4.0-BY license.
