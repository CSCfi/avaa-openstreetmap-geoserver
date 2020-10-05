#!/bin/bash

#cat <<EOF 
#***   Tietoa OSM:n päivitysajosta ***
#
# Geosever:illä toteutettu OSM:n Suomen alueen wms/wmts/wfs-palvelu.  
# OSM-aineisto päivitetään automaattisesti ajoitettuna lauantaisin.
#
# Tässä on menossa ko. paivitysajo, jossa
#  - haetaan uusi suomen OSM aineisto palvelimelta download.geofabrik.de
#  - viedään se PostGIS kantaan osm_finland EPSG:3067 koordinaattijärjestelmässä
#  - päitetään geoserver:in wms-cache aineiston osalta
#
# Seuraavassa vähän tietoa päivitysajon kulusta.  
#EOF

echo -e "\nosm-update alkoi:" $(date)

### 2) Tyhjennä tmp ja siirry sinne.  

rm -fr /tmp/osm

IFS=$'\n'
for l in $(df -m /tmp); do
 echo "---" $l
done
mkdir /tmp/osm
cd   /tmp/osm

### 3) Haetaan OSM:n .zip ja .osm.pbf
wget -q http://download.geofabrik.de/europe/finland-latest-free.shp.zip
wget -q http://download.geofabrik.de/europe/finland-latest.osm.pbf

### 4) pura zip
unzip -qq finland-latest-free.shp.zip 

# renaming files
# (Geofabrik renamed the files at some point.)
mv gis.osm_buildings_a_free_1.cpg buildings.cpg
mv gis.osm_buildings_a_free_1.dbf buildings.dbf
mv gis.osm_buildings_a_free_1.prj buildings.prj
mv gis.osm_buildings_a_free_1.shp buildings.shp
mv gis.osm_buildings_a_free_1.shx buildings.shx

mv gis.osm_landuse_a_free_1.cpg landuse.cpg
mv gis.osm_landuse_a_free_1.dbf landuse.dbf
mv gis.osm_landuse_a_free_1.prj landuse.prj
mv gis.osm_landuse_a_free_1.shp landuse.shp
mv gis.osm_landuse_a_free_1.shx landuse.shx

#Natural: tree, beach, cave, cliff, peak, spring. Not used now.
#mv gis.osm_natural_a_free_1.cpg natural.cpg
#mv gis.osm_natural_a_free_1.dbf natural.dbf
#mv gis.osm_natural_a_free_1.prj natural.prj
#mv gis.osm_natural_a_free_1.shp natural.shp
#mv gis.osm_natural_a_free_1.shx natural.shx
#mv gis.osm_natural_free_1.cpg natural.cpg
#mv gis.osm_natural_free_1.dbf natural.dbf
#mv gis.osm_natural_free_1.prj natural.prj
#mv gis.osm_natural_free_1.shp natural.shp
#mv gis.osm_natural_free_1.shx natural.shx
rm gis.osm_natural*

#Places_a: islands, farms, etc, Not used now.
#mv gis.osm_places_a_free_1.cpg places_a.cpg
#mv gis.osm_places_a_free_1.dbf places_a.dbf
#mv gis.osm_places_a_free_1.prj places_a.prj
#mv gis.osm_places_a_free_1.shp places_a.shp
#mv gis.osm_places_a_free_1.shx places_a.shx
rm gis.osm_places_a*

mv gis.osm_places_free_1.cpg places.cpg
mv gis.osm_places_free_1.dbf places.dbf
mv gis.osm_places_free_1.prj places.prj
mv gis.osm_places_free_1.shp places.shp
mv gis.osm_places_free_1.shx places.shx

mv gis.osm_pofw_a_free_1.cpg pofw_a.cpg
mv gis.osm_pofw_a_free_1.dbf pofw_a.dbf
mv gis.osm_pofw_a_free_1.prj pofw_a.prj
mv gis.osm_pofw_a_free_1.shp pofw_a.shp
mv gis.osm_pofw_a_free_1.shx pofw_a.shx

mv gis.osm_pofw_free_1.cpg pofw.cpg
mv gis.osm_pofw_free_1.dbf pofw.dbf
mv gis.osm_pofw_free_1.prj pofw.prj
mv gis.osm_pofw_free_1.shp pofw.shp
mv gis.osm_pofw_free_1.shx pofw.shx

mv gis.osm_pois_a_free_1.cpg points_a.cpg
mv gis.osm_pois_a_free_1.dbf points_a.dbf
mv gis.osm_pois_a_free_1.prj points_a.prj
mv gis.osm_pois_a_free_1.shp points_a.shp
mv gis.osm_pois_a_free_1.shx points_a.shx

mv gis.osm_pois_free_1.cpg points.cpg
mv gis.osm_pois_free_1.dbf points.dbf
mv gis.osm_pois_free_1.prj points.prj
mv gis.osm_pois_free_1.shp points.shp
mv gis.osm_pois_free_1.shx points.shx

mv gis.osm_railways_free_1.cpg railways.cpg
mv gis.osm_railways_free_1.dbf railways.dbf
mv gis.osm_railways_free_1.prj railways.prj
mv gis.osm_railways_free_1.shp railways.shp
mv gis.osm_railways_free_1.shx railways.shx

mv gis.osm_roads_free_1.cpg roads.cpg
mv gis.osm_roads_free_1.dbf roads.dbf
mv gis.osm_roads_free_1.prj roads.prj
mv gis.osm_roads_free_1.shp roads.shp
mv gis.osm_roads_free_1.shx roads.shx

mv gis.osm_traffic_a_free_1.cpg traffic_a.cpg
mv gis.osm_traffic_a_free_1.dbf traffic_a.dbf
mv gis.osm_traffic_a_free_1.prj traffic_a.prj
mv gis.osm_traffic_a_free_1.shp traffic_a.shp
mv gis.osm_traffic_a_free_1.shx traffic_a.shx
mv gis.osm_traffic_free_1.cpg traffic.cpg
mv gis.osm_traffic_free_1.dbf traffic.dbf
mv gis.osm_traffic_free_1.prj traffic.prj
mv gis.osm_traffic_free_1.shp traffic.shp
mv gis.osm_traffic_free_1.shx traffic.shx

mv gis.osm_transport_a_free_1.cpg transport_a.cpg
mv gis.osm_transport_a_free_1.dbf transport_a.dbf
mv gis.osm_transport_a_free_1.prj transport_a.prj
mv gis.osm_transport_a_free_1.shp transport_a.shp
mv gis.osm_transport_a_free_1.shx transport_a.shx
mv gis.osm_transport_free_1.cpg transport.cpg
mv gis.osm_transport_free_1.dbf transport.dbf
mv gis.osm_transport_free_1.prj transport.prj
mv gis.osm_transport_free_1.shp transport.shp
mv gis.osm_transport_free_1.shx transport.shx

#Not used.
#mv gis.osm_water_a_free_1.cpg water.cpg
#mv gis.osm_water_a_free_1.dbf water.dbf
#mv gis.osm_water_a_free_1.prj water.prj
#mv gis.osm_water_a_free_1.shp water.shp
#mv gis.osm_water_a_free_1.shx water.shx
rm gis.osm_water_a*

mv gis.osm_waterways_free_1.cpg waterways.cpg
mv gis.osm_waterways_free_1.dbf waterways.dbf
mv gis.osm_waterways_free_1.prj waterways.prj
mv gis.osm_waterways_free_1.shp waterways.shp
mv gis.osm_waterways_free_1.shx waterways.shx

echo 'rename'
# rename fclass column to type (all layers except buildings)
ogrinfo buildings.shp -sql "alter table buildings rename column fclass to type" 
ogrinfo landuse.shp -sql "alter table landuse rename column fclass to type" 
#ogrinfo natural_a.shp -sql "alter table natural_a rename column fclass to type" 
#ogrinfo natural.shp -sql "alter table natural rename column fclass to type" 
ogrinfo places.shp -sql "alter table places rename column fclass to type" S
#ogrinfo places_a.shp -sql "alter table places_a rename column fclass to type" 
ogrinfo pofw.shp -sql "alter table pofw rename column fclass to type" 
ogrinfo pofw_a.shp -sql "alter table pofw_a rename column fclass to type" 
ogrinfo points.shp -sql "alter table points rename column fclass to type" 
ogrinfo points_a.shp -sql "alter table points_a rename column fclass to type" 
ogrinfo railways.shp -sql "alter table railways rename column fclass to type" 
ogrinfo roads.shp -sql "alter table roads rename column fclass to type" 
ogrinfo traffic.shp -sql "alter table traffic rename column fclass to type" 
ogrinfo traffic_a.shp -sql "alter table traffic_a rename column fclass to type" 
ogrinfo transport.shp -sql "alter table transport rename column fclass to type" 
ogrinfo transport_a.shp -sql "alter table transport_a rename column fclass to type" 
#ogrinfo water.shp -sql "alter table water rename column fclass to type" 
ogrinfo waterways.shp -sql "alter table waterways rename column fclass to type"

# TRANSPORT
echo 'transport'
# copy stops to Points layer
ogr2ogr -f "ESRI Shapefile" -append -update -where "type='railway_station' OR type='railway_halt' OR type='tram_stop' OR type='bus_stop' OR type='bus_station' OR type='ferry_terminal' OR type='airport' OR type='taxi_rank'" points.shp transport.shp

ogr2ogr -f "ESRI Shapefile" -append -update -where "type='railway_station' OR type='railway_halt' OR type='tram_stop' OR type='bus_stop' OR type='bus_station' OR type='ferry_terminal' OR type='airport' OR type='taxi_rank'" points_a.shp transport_a.shp

# move Fuel stations to Points layer
ogr2ogr -f "ESRI Shapefile" -append -update -where "type='fuel'" points.shp traffic.shp 
ogr2ogr -f "ESRI Shapefile" -append -update -where "type='fuel'" points_a.shp traffic_a.shp 

# POFW
echo 'powf'
# change type to 'place_of_worship'
ogrinfo pofw.shp -dialect SQLITE -sql "update pofw set type='place_of_worship'"
ogrinfo pofw_a.shp -dialect SQLITE -sql "update pofw_a set type='place_of_worship'"

# copy elements to pois layer 
ogr2ogr -f "ESRI Shapefile" -append -update points.shp pofw.shp
ogr2ogr -f "ESRI Shapefile" -append -update points_a.shp pofw_a.shp

# Remove layers not used as tables
rm traffic*
rm transport*
rm pofw*

### 4A)Add lakes and municipality borders from .pbf file. Drop unnecessary column from municipalities.
#Water includes islands of lakes in some strange way, so they get also colored
#Landuse has less protected areas like this way, so also kept in old style.
ogr2ogr -where "natural like 'water'" lakes.shp finland-latest.osm.pbf multipolygons -lco ENCODING=UTF-8
ogr2ogr -where "leisure='nature_reserve' or boundary LIKE 'national_park%' OR boundary='protected_area'" protected.shp finland-latest.osm.pbf multipolygons -lco ENCODING=UTF-8

ogr2ogr -where "admin_level='8'" municipalities.shp finland-latest.osm.pbf multipolygons -lco ENCODING=UTF-8
ogrinfo municipalities.shp -sql "alter table municipalities drop column other_tags"

### 5) muuta shp:t  sql:ksi ja laataa kantaan
echo -e "\n*** Ladataan seuraavat layer:it osm_finland kantaan:"
for f in *.shp 
do 
 echo -e "\n---" $f
 fshort=$(basename $f .shp)
 shp2pgsql -d -I -s 4326:3067 $f osm.$fshort | ~/psql -q -h <db_server_name> -p 5520 -U <db_user_name> -d osm_finland 1>/dev/null
done 

echo -e "\n*** Generoidaan indexit"

~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON roads (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON landuse (type)"
#~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON nature (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON points (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON points_a (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON places (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON places (population)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON railways (type)"
~/psql -q -h <db_server_name> -p <db_port_number> -U <db_user_name> -d osm_finland -c "CREATE INDEX ON waterways (type)"
### 6) Käynnistä tomcat/geoserver?  Katso yllä onko pysäytetty.

### 7) Päivitä geoserver:in cache

osm-cache-seed   # tämä on omana scriptinä, jos tarvitaan ajaa erikseen

cat <<EOF

Jos ed. taulukon rivit eivät ole tyhjiä, niin cache:n generointi pitäisi olla ok.
EOF
cat << EOF
That's all!  
Jos edellä oli virheilmoituksia, niin pitäsi kai tehdä jotain ?
EOF

echo -e "\nosm-update loppui:" $(date)




