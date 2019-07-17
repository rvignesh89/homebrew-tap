class Ytbx < Formula
  desc "ytbx - YAML tool box"
  homepage "https://github.com/homeport/ytbx"
  url "https://github.com/homeport/ytbx/releases/download/v1.1.1/ytbx-darwin-amd64"
  version "v1.1.1"
  sha256 "2566d7e909ca07d371f9b272301eca315c122f90a77e4db3ea627530f7ba90e9"

  def install
    mv('ytbx-darwin-amd64', 'ytbx')
    bin.install 'ytbx'
  end

  test do
    system "#{bin}/ytbx", 'version'
  end
end
