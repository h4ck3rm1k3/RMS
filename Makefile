NAME=rmsmapnik 
build :
	sudo docker build -t $(NAME) . 

shell:
	sudo docker run  -i --link pgroute:db -t $(NAME)  /bin/bash -i

server:
	sudo docker run --name $(NAME) --link pgroute:db -t $(NAME)


import: build
	sudo docker run  -i --link pgroute:db -t $(NAME)  bash -x /opt/RMS/import.sh
