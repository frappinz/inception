NAME = inception

all: prune reload
	
stop:
	@ docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ rm -rf ~/Desktop/volume

prune: clean
	@ docker system prune -a

reload:
	@ mkdir -p ~/Desktop/volume/mariadb
	@ mkdir -p ~/Desktop/volume/website
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all
