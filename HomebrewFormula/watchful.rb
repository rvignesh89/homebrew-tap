class Watchful < Formula
  desc "/ˈwɒtʃf(ə)l/ - tool to measure the disruption caused by a change to a Cloud Foundry environment "
  homepage "https://github.com/homeport/watchful"
  url "https://github.com/homeport/watchful/releases/download/v1.0.0/watchful-darwin-amd64"
  version "v1.0.0"
  sha256 "92a38452cf5ce4dd3874ae6e54f0ca5733e3f68cc6d91de7649d57fb66499295"

  def install
    mv('watchful-darwin-amd64', 'watchful')
    bin.install 'watchful'
  end

  test do
    system "#{bin}/watchful", 'version'
  end
end
