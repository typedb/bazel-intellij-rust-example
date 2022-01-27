load("@rules_rust//rust:defs.bzl", "rust_library")

srcs = glob([
    "lib1.rs",
    "fruit/*.rs",
])

rust_library(
    name = "lib1",
    srcs = srcs,
    visibility = ["//visibility:public"]
)
