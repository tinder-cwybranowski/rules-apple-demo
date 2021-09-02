load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:macos.bzl", "macos_unit_test")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_test")

swift_library(
    name = "Example",
    module_name = "Example",
    srcs = [
      "Example/Example.swift"
    ],
    visibility = ["//visibility:public"],
)

swift_library(
    name = "ExampleTestsLibrary",
    module_name = "ExampleTestsLibrary",
    srcs = [
      "Example/ExampleTests.swift"
    ],
    deps = [
      ":Example",
    ],
    visibility = ["//visibility:private"],
)

macos_unit_test(
    name = "ExampleTests_macOS",
    minimum_os_version = "10.15",
    deps = [
      ":ExampleTestsLibrary",
    ],
    visibility = ["//visibility:public"],
)

ios_unit_test(
    name = "ExampleTests_iOS",
    minimum_os_version = "13",
    deps = [
      ":ExampleTestsLibrary",
    ],
    visibility = ["//visibility:public"],
)

swift_test(
    name = "ExampleTests_SwiftTest",
    deps = [
      ":ExampleTestsLibrary",
    ],
)
