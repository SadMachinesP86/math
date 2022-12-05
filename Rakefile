# frozen_string_literal: true

task :rust_build do
  `cargo rustc --release`
  `mv -f ./target/release/libgeometry.so ./lib/geometry/ffi`
end

task :build => :rust_build
task :spec => :rust_build

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/geometry/ffi/libgeometry.so`
end

task :clean => :rust_clean
