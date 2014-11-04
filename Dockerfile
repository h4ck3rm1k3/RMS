FROM imposm3:latest
MAINTAINER James Michael DuPont <h4ck3rm1k3@thefr33.com>
run  apt-get install -texperimental -y python-mapnik mapnik-utils

RUN mkdir -p /var/lib/splitter/australia-oceania/australia/queensland/brisbane/
RUN curl http://api.fosm.org/api/0.6/map?bbox=152.918,-27.6397,152.9609,-27.6133 > /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example.osm

osm2pgsql --slim -S RMS.style -d routing -C 17000 /var/lib/splitter/australia-oceania/australia/queensland/brisbane/example.psm