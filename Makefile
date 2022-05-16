current_dir = $(shell pwd)
build:
	docker build -t jona_nvim .
	docker run --rm -it -v $(current_dir):/root/.config/nvim jona_nvim bash

clean:
	docker image rm jona_nvim
