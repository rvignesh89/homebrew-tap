class Ytbx < Formula
  desc "ytbx - YAML tool box"
  homepage "https://github.com/homeport/ytbx"
  url "https://github.com/homeport/ytbx/releases/download/v1.1.2/ytbx-darwin-amd64"
  version "v1.1.2"
  sha256 "272e6ec05c9490db222c61f94396e4612935275605b2289e6c37cc04ccdf97e7"

  def install
    mv('ytbx-darwin-amd64', 'ytbx')
    bin.install 'ytbx'
  end

  test do
    system "#{bin}/ytbx", 'version'
  end
end
