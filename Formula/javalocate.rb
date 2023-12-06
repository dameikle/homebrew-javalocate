# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Javalocate < Formula

  desc "Command line utility to find JVM versions on macOS and Linux" 
  homepage "https://github.com/dameikle/javalocate"
  url "https://github.com/dameikle/javalocate/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "e2488212fb952c88114f831f426617c40d0528718ff7ad14012eed11b360229c"
  version "0.7.1"
  depends_on "rust" => :build

def install
  system "cargo", "build", "--release", "--bin", "javalocate"
  bin.install "target/release/javalocate"
end
end
