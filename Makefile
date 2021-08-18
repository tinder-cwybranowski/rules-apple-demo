.PHONY: success
success:
	bazelisk test ExampleTests \
		--test_output=all \
		--cache_test_results=no \
		--macos_cpus=x86_64

.PHONY: failure
failure:
	bazelisk test ExampleTests \
		--test_output=all \
		--cache_test_results=no \
		--macos_cpus=arm64
