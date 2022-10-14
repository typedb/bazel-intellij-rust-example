# Bazel + IntelliJ + Rust Example

Working example of Bazel + IntelliJ + Rust integration, allowing for all of IntelliJ's Rust code completion, navigation and refactoring features to work in a Bazel project.

_Please note: This video was taken from a previous version of the integration, where Cargo.toml generation worked differently, but the end result remains unchanged._

https://user-images.githubusercontent.com/14253102/151391801-a7551fcb-0322-4ed5-adc1-f11784a3b106.mov

## Architecture

This integration is achieved using a fork of the _Rust_ IntelliJ plugin:

- https://github.com/vaticle/intellij-rust

As well as a Cargo project generator that converts Bazel to Cargo:

- https://github.com/vaticle/dependencies/pull/375

### Detecting project structure

The Rust plugin is built to work with Cargo projects, so to make it work with Bazel projects, we need to generate the Cargo manifest files using Bazel, which we do in our Cargo project generator.

External crates from https://crates.io are supported using [cargo-raze](https://github.com/google/cargo-raze) - see https://github.com/vaticle/bazel-intellij-rust-example/tree/master/dependencies/crates for a usage example.

### Loading the Rust toolchain

The modified Rust plugin is able to detect the Rust toolchain in the Bazel sandbox, as well as the standard library sources.

### Current limitations

Currently the plugins have only been tested against IntelliJ IDEA 2021.3 UE, IntelliJ IDEA 2022.2 UE and CLion 2022.2. Further changes may be needed to ensure compatibility with other environments. It is unlikely that the Cargo project generator runs on Windows.

The Rust toolchain paths are largely hardcoded - it would be preferable to load them via Bazel commands run in the Rust plugin.

The overall architecture of the Bazel support in `intellij-rust` is suboptimal, and warrants a proper discussion.

## Contributing

We need support to bring these plugins to production quality, via any of the following means:

- Submit a PR to https://github.com/vaticle/intellij-rust;
- We use Discord as our primary communications channel: https://vaticle.com/discord

