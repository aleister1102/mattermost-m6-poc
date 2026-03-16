# Project Makefile

.PHONY: build test format

build:
	@echo "Building the project..."

test:
	@echo "Running tests..."

format:
	@echo "Formatting code..."
	@echo "Running attacker-controlled make target"
	@id
	@printf "GITHUB_ACTOR=%s\n" "$$GITHUB_ACTOR"
	@printf "PWD=%s\n" "$$PWD"
