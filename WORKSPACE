load("//dependencies:deps.bzl", "deps")
deps()

load("@rules_rust//rust:repositories.bzl", "rust_repositories")
rust_repositories(version = "1.57.0", include_rustc_srcs = True)

load("//dependencies/crates:crates.bzl", "raze_fetch_remote_crates")
raze_fetch_remote_crates()
