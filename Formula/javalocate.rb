# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Javalocate < Formula

  desc "Command line utility to find JVM versions on macOS and Linux" 
  homepage "https://github.com/dameikle/javalocate"
  url "https://github.com/dameikle/javalocate/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "a921bf241c83feedb15a3b1ccc05f0a2bbaebfe7f41ebd1455eca4956e2f0c7c"
  version "0.5.0"
  depends_on "rust" => :build

def install
  system "cargo", "build", "--release", "--bin", "javalocate"
  bin.install "target/release/javalocate"
end
end
