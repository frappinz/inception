NAME = inception

all: prune reload

linux:
	@ echo "127.0.0.1 raccoman.42.fr" >> /etc/hosts
	
stop:
	@ sudo docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ rm -rf /home/frappinz/data/volume

prune: clean
	@ sudo docker system prune -a

reload:
	@ mkdir -p /home/frappinz/data/volume/mariadb
	@ mkdir -p /home/frappinz/data/volume/website
	@ sudo docker-compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all
