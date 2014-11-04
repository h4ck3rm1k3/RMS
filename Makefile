NAME=rmsmapnik 
build :
	sudo docker build -t $(NAME) . 

shell:
	sudo docker run  -i -t $(NAME) --link pgroute:db /bin/bash -i

server:
	sudo docker run --name $(NAME) --link pgroute:db -t $(NAME)
