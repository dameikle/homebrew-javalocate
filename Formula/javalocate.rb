# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Javalocate < Formula

  desc "Command line utility to find JVM versions on macOS" 
  homepage "https://github.com/dameikle/javalocate"
  url "https://github.com/dameikle/javalocate/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47fe16200138b03b344b7b2aeff252255d7195d6c2cf9ba402d57374d9b88f0f"
  version "0.1.0"
  depends_on "rust" => :build

def install
  system "cargo", "build", "--release", "--bin", "javalocate"
  bin.install "target/release/javalocate"
end
end
