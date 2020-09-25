class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.2.0/build-load-darwin-amd64"
  version "v0.2.0"
  sha256 "9e3d3703973f29d5b0b653fd4cb0f7e83c73f3f3afcabaa4e363d7479553cb33"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
