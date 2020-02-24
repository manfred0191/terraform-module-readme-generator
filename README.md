Terraform Module Readme Generator
---------------------------------
This is a simple docker which generated a README.md file for your Terraform Modules using [terraform-config-inspect](https://github.com/hashicorp/terraform-config-inspect)

Example Makefile for your module project:
```
SHELL := /bin/bash
MODULE := $(notdir $(PWD))
USERID := $(shell id -u)
USERGROUP := $(shell id -g)

.PHONY: readme

readme:
	docker run --rm -e MODULE=$(MODULE) --user $(USERID):$(USERGROUP) -it -v $(PWD):/go/src/app/$(MODULE) binxio/terraform-module-readme-generator:latest

```

From within your module directory you can then run:
```
make readme
```

The README.md file will be overwritten and updated with the latest variables, outputs etc...
