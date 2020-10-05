These scripts were used for automatic update once a week with CRON.
All data was first deleted and then PostGIS database populated again with new data.
Data was written do database in EPSG:3067 coordinate system.

In scripts replace correct valuest to:
* db_server_name
* db_port_number
* db_user_name
* geoserver_user_name
* geoserver_password
