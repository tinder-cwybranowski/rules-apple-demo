load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:macos.bzl", "macos_unit_test")

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
    name = "ExampleTests",
    minimum_os_version = "10.15",
    deps = [
      ":ExampleTestsLibrary",
    ],
    visibility = ["//visibility:public"],
)
