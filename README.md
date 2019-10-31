# Tapyrus SPV implementation which runs on iOS device

This repository is WIP

## How to run

```
$ cd tapryus-spv
$ rustup target add aarch64-apple-ios armv7-apple-ios armv7s-apple-ios x86_64-apple-ios i386-apple-ios
$ cargo install cargo-lipo
$ cargo lipo --release
```

Then run app in such a way as usual ios app's one.
