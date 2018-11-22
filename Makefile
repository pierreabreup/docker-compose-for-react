SHELL := /bin/bash # Use bash syntax

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

run:
	docker-compose run --service-ports --name react-container --rm app

server:
	docker exec -it react-container bash -c "cd */ && yarn start"

destroy:
	docker-compose down
	docker rmi docker-compose-for-react_app
