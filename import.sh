which osm2pgsql
#osm2pgsql --create --cache 100 --slim -S /opt/RMS/RMS.style -H db -U docker  -d routing  /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example2.osm
osm2pgsql --create  --number-processes 4 --bbox 112.3,-44.2,154.1,-9.6 --slim --cache-strategy sparse /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example2.osm   --style /opt/RMS/RMS.style  -H db -U docker  -d routing

#--expire-tiles 10-18
#--expire-output /home/extracts/expire.list
