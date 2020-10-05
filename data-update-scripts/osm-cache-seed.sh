#!/bin/bash

#
# generoidaan cachen tasot 1-10
#

echo -e "\n*** OSM Finland cache:n generointi seuraaville:\n"  >osm-cache-status
for f in osm-finland roads 
do
 echo "--- "  $f  >>osm-cache-status
 curl -s -u '<geoserver_user_name>:<geoserver_password>' -XPOST -H "Content-type: application/json"  \
     -d "{'seedRequest':{'zoomStart':1,'zoomStop':10,'format':'image\/png','threadCount':1}}}" \
  "http://localhost:8080/geoserver/gwc/rest/seed/osm_finland:$f.json"  2>>/dev/null 

done 

sleep 10


#
# Katsotaan onko cache:n generointi käynnissä
#

echo -e "\n*** OSM Finland cache:n tila tarkastus:\n"  >>osm-cache-status
for f in osm-finland roads 
do

 echo "--- " $f `curl -s -u "<geoserver_user_name>:<geoserver_password>" -XGET http://localhost:8080/geoserver/gwc/rest/seed/osm_finland:$f.json` >>osm-cache-status

done

cat  osm-cache-status



