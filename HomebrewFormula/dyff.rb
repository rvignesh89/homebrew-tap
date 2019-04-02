require 'FileUtils'

# Just the dyff homebrew formula
class Dyff < Formula
  dver = "v0.8.0"
  dsha = "894992dec49b172844236ef74a17061858569fd301d08fecc3bff416539c4fde"

  desc 'δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON'
  homepage 'https://github.com/homeport/dyff'
  url "https://github.com/homeport/dyff/releases/download/#{dver}/dyff-darwin-amd64"
  sha256 "#{dsha}"
  version "#{dver}"

  def install
    FileUtils.mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
