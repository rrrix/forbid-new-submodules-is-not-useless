MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables
MAKEFLAGS += --environment-overrides
MAKEFLAGS += --always-make

.DEFAULT: all
.PHONY: all pre-commit-run pre-commit-install

all: pre-commit-install pre-commit-run
	@:

pre-commit-install:
	pre-commit install --install-hooks --overwrite

pre-commit-run:
	pre-commit run --verbose --all-files

