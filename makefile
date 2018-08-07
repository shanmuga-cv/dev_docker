scale_count := 1

up-scale:
	docker-compose up -d --scale dev=${scale_count}

up-no-start:
	docker-compose up --no-start d --scale dev=${scale_count}

clean:
	docker-compose down

build:
	docker-compose build .

create-network:
	docker network create dev_network_1