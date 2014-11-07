cd /opt/tilemill
#node ./index.js export --format mbtiles RMS /opt/RMS/export/ --bbox=153.020325,-27.568182,152.850037,-27.686811
#node ./index.js export --format mbtiles RMS /opt/RMS/export/ --bbox=-27.568182,153.020325,-27.686811,152.850037
node ./index.js export --format png --bbox="152.918,-27.6397,152.9609,-27.6133" RMS /opt/RMS/export2.png
