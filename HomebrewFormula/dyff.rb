class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v0.10.2/dyff-darwin-amd64"
  version "v0.10.2"
  sha256 "9b5979051f8cd3757104a7cdae0a1eafc5af11dc4a87830c62b02cbb8c82019a"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
