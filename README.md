# Rules Apple - Apple Silicon Demo

This project demonstrates an issue that can hopefully be addressed in [rules_apple](https://github.com/bazelbuild/rules_apple): [macos_unit_test](https://github.com/bazelbuild/rules_apple/blob/master/apple/macos.bzl#L303) does not appear to respect `macos_cpus` configuration flag.

This project was created to add context to the [bazelbuild/rules_apple](https://github.com/bazelbuild/rules_apple) GitHub Issue opened [here](https://github.com/bazelbuild/rules_apple/issues/1221).

**Note:** This demo uses Xcode 12.5.1 (per the `.bazelrc`).

---

## Update: 8/19/21

Per the [thread here](https://github.com/bazelbuild/rules_apple/issues/1221#issuecomment-901515040), this was addressed and confirmed fixed for the issue described in this repository in revision `0a2c39c0209087e39818c16908c545d744a2e0ca` of [rules_apple](https://github.com/bazelbuild/rules_apple).

**Note:** With the latest revision, `xcodebuild` is still reluctant to run `x86_64` tests on an Apple Silicon host, even if the architecture configuration is passed explicitly via `--macos_cpus=x86_64` ([see here](https://github.com/bazelbuild/rules_apple/issues/1221#issuecomment-901518352)).

---

## Setup

The `Makefile` contains two commands to demonstrate the issue:

### Success

This demonstrates a successful invocation using the `--macos_cpus=x86_64` configuration:
```
make success
```

### Failure

This demonstrates a failed invocation using the `--macos_cpus=arm64` configuration:
```
make failure
```

**Note:** This should behave the same as manually invoking `bazelisk build ExampleTests`.

---

## Issue

### macos_unit_test Incorrect CPU Architecture

Using `make failure`, we observe that the unit tests fail. Moreover, the full test output indicates that the underlying `xcodebuild` invocation used the `x86_64` architecture, despite explicitly passing `arm64`:

```
Command line invocation:
    /Applications/Xcode12.5.1.app/Contents/Developer/usr/bin/xcodebuild test-without-building -destination platform=macOS,arch=x86_64 -xctestrun /var/folders/d2/26js2mt159n948c9ry6mt60c0000gp/T//test_tmp_dir.KXf4bB/tests.xctestrun
```
