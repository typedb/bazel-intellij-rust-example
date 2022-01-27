load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def deps():
    http_archive(
        name = "rules_rust",
        sha256 = "0e75661570c9859c15c6a10fbc3a3cfa8855bf4bb7db375612beca6ea4a61261",
        strip_prefix = "rules_rust-abdb288efe98bebb23001adbfbad5468a9c08fe3",
        urls = ["https://github.com/vaticle/rules_rust/archive/abdb288efe98bebb23001adbfbad5468a9c08fe3.tar.gz"],
    )
