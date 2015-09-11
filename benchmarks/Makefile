.deps.lock: Projectfile
	crystal deps

frameworks: .deps.lock
	crystal build --release compare-frameworks.cr
	./compare-frameworks

.PHONY: frameworks
