.PHONY: docker.build
docker.build:
	docker build -t k8s-skeleton .

docker.run:
	docker run -it k8s-skeleton /bin/bash
