# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Javalocate < Formula

  desc "Command line utility to find JVM versions on macOS and Linux" 
  homepage "https://github.com/dameikle/javalocate"
  url "https://github.com/dameikle/javalocate/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "6f7d07209df67a36d42732884c6d08f5c476fbca04b109dc91a8743c83b7a047"
  version "0.3.2"
  depends_on "rust" => :build

def install
  system "cargo", "build", "--release", "--bin", "javalocate"
  bin.install "target/release/javalocate"
end
end
