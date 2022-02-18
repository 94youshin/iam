.DEFAULT_GOAL=run
# ===================================

ROOT_PACKAGE=github.com/usmhk/iam
# Includes

include scripts/make-rules/common.mk
include scripts/make-rules/swagger.mk

# ===================================
# Usage

define USAGE_OPTIONS

Options:
  DEBUG			Whether to generate debug symbols. Default is 0.
endef

export USAGE_OPTIONS

## swagger: Generate swagger document.
.PHONY: swagger
swagger:
	@$(MAKE) swagger.run

## serve-swagger: Serve swagger spec and docs.
serve-swagger:
	@$(MAKE) swagger.serve

## run: Start iam apiserver
run:
	@go run cmd/iam-apiserver/iam-apiserver.go

## help: Show this help info.
.PHONY: help
help: Makefile
	@echo -e "\nUsage: make <TARGETS> <OPTIONS> ...\n\nTargets:"
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'
	@echo "$$USAGE_OPTIONS"
