shard.lock: shard.yml
	crystal deps

frameworks: shard.lock
	crystal build --release compare-frameworks.cr
	./compare-frameworks

.PHONY: frameworks
