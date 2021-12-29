up: build
	docker run --rm -p 8081:8080 -e SWAGGER_JSON=/foo/output_openapi.yaml -v $(shell pwd):/foo swaggerapi/swagger-ui:latest

clean:
	@echo "removing output_openapi.yaml..."
	rm -rf output_openapi.yaml

build:
	npx swagger-merger -i openapi.yaml -o output_openapi.yaml
