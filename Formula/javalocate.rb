# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Javalocate < Formula

  desc "Command line utility to find JVM versions on macOS and Linux" 
  homepage "https://github.com/dameikle/javalocate"
  url "https://github.com/dameikle/javalocate/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "5a221a1442044a36f79dca4d585847e8015429b4db7804a7c52707a082917b42"
  version "0.3.2"
  depends_on "rust" => :build

def install
  system "cargo", "build", "--release", "--bin", "javalocate"
  bin.install "target/release/javalocate"
end
end
