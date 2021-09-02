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

# [CW] 8/23/21 - Flags derived from suggestions here:
# https://bazelbuild.slack.com/archives/CD3QY5C2X/p1629507357064400?thread_ts=1629412403.051800&cid=CD3QY5C2X
.PHONY: coverage
coverage: target ?= ExampleTests_macOS
coverage:
	bazelisk coverage $(target) \
			--experimental_use_llvm_covmap \
			--test_env=LCOV_MERGER=/usr/bin/true \
			--features=swift.coverage_prefix_map \
			--cache_test_results=no \
			--test_output=all \
