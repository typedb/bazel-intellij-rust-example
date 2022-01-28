load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def deps():
    http_archive(
        name = "rules_rust",
        sha256 = "1a919f80faf6a5e3ee1d0fccf84775c5f6f6ee062eb413dd9f7560b6b02008bb",
        strip_prefix = "rules_rust-1cb3c446b263c16b373e259e988f00c5f1e3f175",
        urls = ["https://github.com/bazelbuild/rules_rust/archive/1cb3c446b263c16b373e259e988f00c5f1e3f175.tar.gz"],
    )
