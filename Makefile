start:
	docker run --rm -p 8081:8080 -e SWAGGER_JSON=/foo/openapi.yaml -v $(shell pwd):/foo swaggerapi/swagger-ui
