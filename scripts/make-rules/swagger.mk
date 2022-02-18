.PHONY: swagger.run
swagger.run:
	@echo "==========> Generating swagger API docs"
	@swagger generate spec --scan-models -w $(ROOT_DIR)/api/swagger/docs -o $(ROOT_DIR)/api/swagger/swagger.yaml
.PHONY: swagger.serve
swagger.serve: 
	@swagger serve --no-open --port 36666 $(ROOT_DIR)/api/swagger/swagger.yaml
