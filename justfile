before_commit:
  cargo clippy --release --all-targets -- -D warnings
  cargo clippy --all-targets -- -D warnings
  cargo build --release --all-targets
  cargo build --all-targets
  cargo test
  cargo test --release
  cargo build --profile=release-lto --package gen_large_yaml --bin gen_large_yaml --manifest-path tools/gen_large_yaml/Cargo.toml
