.PHONY: docker

docker: Dockerfile
	docker build -t terraform-module-readme-generator:latest .
