class Yft < Formula
  desc "yft - YAML file tool"
  homepage "https://github.com/homeport/yft"
  url "https://github.com/homeport/yft/releases/download/v1.0.0/yft-darwin-amd64"
  version "v1.0.0"
  sha256 "78d3fd864aac8a018668fdd10b75522ff966cc181602bce60ae9164a8fbd3865"

  def install
    mv('yft-darwin-amd64', 'yft')
    bin.install 'yft'
  end

  test do
    system "#{bin}/yft", 'version'
  end
end
