load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# BUILD_BAZEL_RULES_APPLE_SHA = "0a2c39c0209087e39818c16908c545d744a2e0ca"
# http_archive(
#     name = "build_bazel_rules_apple",
#     sha256 = "dceec7cf5f79d2a5a6d2276e3d9f2cb3967bf117aa187b388354b223bc2aa277",
#     url = "https://github.com/bazelbuild/rules_apple/archive/%s.zip" % BUILD_BAZEL_RULES_APPLE_SHA,
#     strip_prefix = "rules_apple-%s" % BUILD_BAZEL_RULES_APPLE_SHA,
# )

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "d047a576437bb6fb150d8ad6f504b72eee983ff577b07e897ba600e866d14638",
    url = "https://github.com/bazelbuild/rules_apple/archive/ks/generate-lcov-file-for-ios-tests-run-with-coverage.zip",
    strip_prefix = "rules_apple-ks-generate-lcov-file-for-ios-tests-run-with-coverage",
)

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "4e03e41e1d6634dcaeb5f56ad07f61843f53108df29273574cfb59e4b582e8da",
    url = "https://github.com/bazelbuild/rules_swift/archive/ks/add-code-coverage-support-to-swift_test.zip",
    strip_prefix = "rules_swift-ks-add-code-coverage-support-to-swift_test",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()
