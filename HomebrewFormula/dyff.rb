require 'FileUtils'

# Just the dyff homebrew formula
class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v0.10.0/dyff-darwin-amd64"
  sha256 "0d41fd8f7857dd12eb02722aafbbfe9d594cf6bb156b6e0edcece21e210dfc15"
  version "v0.10.0"

  def install
    FileUtils.mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
