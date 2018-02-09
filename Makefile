IMAGE ?= trello-cli
VERSION ?= latest
REGISTRY ?= technosophos

.PHONY: build
build: docker-build
build: docker-push

.PHONY: docker-build
docker-build:
	docker build -t $(REGISTRY)/$(IMAGE):$(VERSION) .

.PHONY: docker-push
docker-push:
	docker push $(REGISTRY)/$(IMAGE):$(VERSION)
