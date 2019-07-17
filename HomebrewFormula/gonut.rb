class Gonut < Formula
  desc "gonut - a portable tool to help you verify whether you can push a sample app to a Cloud Foundry"
  homepage "https://github.com/homeport/gonut"
  url "https://github.com/homeport/gonut/releases/download/v0.14.0/gonut-darwin-amd64"
  version "v0.14.0"
  sha256 "97c5040923bd0fceed13f692ca844952b9e18343ccfe64f17fd982671e16f546"

  def install
    mv('gonut-darwin-amd64', 'gonut')
    bin.install 'gonut'
  end

  test do
    system "#{bin}/gonut", 'version'
  end
end
