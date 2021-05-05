# swift-sha256sum-example

This is an example repository for calling an OpenSSL function from Swift. It
part of the [Prototyping Swift code with Bazel and Homebrew](
    https://aige.eu/posts/prototyping-swift-code-with-bazel-homebrew/
) blog post.

## Building this repository

`swift build` will most likely work as macOS has OpenSSL installed by default.
If you want to use a specific version installed with e.g. Homebrew, you need to
add it to the include path.

Example for Homebrew on an M1 Mac:

```shell
$ swift build -Xswiftc -I/opt/homebrew/opt/openssl@1.1/include
```

## Running the project

```shell
$ swift run
[1/1] Planning build

[3/3] Linking sha256sum

* Build Completed!
sha256 sum: d5579c46dfcc7f18207013e65b44e4cb4e2c2298f4ac457ba8f82743f31e930b
```
