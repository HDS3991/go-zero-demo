GOPATH:=$(shell go env GOPATH)

.PHONY: api
api:
	goctl api go -api demo.api -dir . && rm ./etc/test-api.yaml

.PHONY: model
model:
	goctl model mysql ddl -src ./model/model.sql -dir ./model -c

.PHONY: rm
rm:
	rm -rf internal/* && rm ./model/* && rm ./test.go