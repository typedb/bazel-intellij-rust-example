load("@rules_rust//rust:defs.bzl", "rust_binary", "rust_library")

srcs = ["main.rs"]

rust_binary(
    name = "main",
    srcs = srcs,
    deps = [
        "//lib1:lib1",
        "//lib2:lib2",
    ]
)
