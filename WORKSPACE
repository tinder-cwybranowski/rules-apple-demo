load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

BUILD_BAZEL_RULES_APPLE_SHA = "0a2c39c0209087e39818c16908c545d744a2e0ca"
http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "dceec7cf5f79d2a5a6d2276e3d9f2cb3967bf117aa187b388354b223bc2aa277",
    url = "https://github.com/bazelbuild/rules_apple/archive/%s.zip" % BUILD_BAZEL_RULES_APPLE_SHA,
    strip_prefix = "rules_apple-%s" % BUILD_BAZEL_RULES_APPLE_SHA,
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
