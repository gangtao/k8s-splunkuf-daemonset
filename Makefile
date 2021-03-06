VERSION ?= 0.3
NAME ?= splunkuf-k8s
IMAGE_NAME ?= ${NAME}:${VERSION}
TARGET_NAME ?= naughtytao/${NAME}:${VERSION}

docker: Dockerfile
	docker build --no-cache -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(TARGET_NAME)

push:
	docker push $(TARGET_NAME)

deploy:
	kubectl create -f splunk-uf-daemonset.yaml