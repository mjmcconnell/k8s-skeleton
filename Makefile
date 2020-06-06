.PHONY: build
build:
	docker-compose build

.PHONY: shell
shell:
	docker-compose run --rm terragrunt
