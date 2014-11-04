FROM imposm3:latest
# using docker from https://github.com/h4ck3rm1k3/docker-postgis 
MAINTAINER James Michael DuPont <h4ck3rm1k3@thefr33.com>
run  apt-get install -texperimental -y python-mapnik mapnik-utils

RUN mkdir -p /var/lib/splitter/australia-oceania/australia/queensland/brisbane/
RUN curl http://api.fosm.org/api/0.6/map?bbox=152.918,-27.6397,152.9609,-27.6133 > /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example.osm


run cd /opt/ && git clone https://github.com/h4ck3rm1k3/RMS.git

RUN curl http://api.osm.org/api/0.6/map?bbox=152.918,-27.6397,152.9609,-27.6133 > /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example2.osm

## experiment to install standard osm2pgsql
##run mkdir -p /opt/osm2pgsql2/ && cd /opt/osm2pgsql2/ &&  apt-get download -texperimental -y osm2pgsql liblua5.2-0 liblwgeom-2.1.4 libprotobuf-c1 postgresql-client-common && dpkg -i *.deb

add import.sh /opt/RMS/import.sh
run chmod +x /opt/RMS/import.sh

