TARGETS := $(shell ls scripts)

.dapper:
	@rm -f .dapper
	@cp /usr/local/bin/dapper .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

$(TARGETS): .dapper
	./.dapper -dc $$HOME/.docker/config.json -f Dockerfile.dapper $@

shell-bind: .dapper
	./.dapper -dc $$HOME/.docker/config.json -f Dockerfile.dapper -s

.DEFAULT_GOAL := package

.PHONY: $(TARGETS)
