.PHONY: build push

DATE = $(shell date "+%Y%m%d")

build:
	docker build -t varju/redirector .

push: build
	docker tag varju/redirector varju/redirector:${DATE}
	docker push varju/redirector:${DATE}
	docker push varju/redirector:latest
