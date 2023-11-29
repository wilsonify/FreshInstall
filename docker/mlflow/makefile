

kompose.tar:
	docker build --progress=plain -t kompose https://github.com/kubernetes/kompose.git\#main



helm:
	docker run --rm --name kompose-runner -it \
	-v $(shell pwd):/opt \
	kompose sh -c \
	"cd /opt && \
	kompose convert -f docker-compose.yaml"