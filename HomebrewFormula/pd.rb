class Pd < Formula
  desc "pd - command line tool to query PagerDuty for the current on-calls"
  homepage "https://github.com/homeport/pd"
  url "https://github.com/homeport/pd/releases/download/v2.3.4/pd-darwin-amd64"
  version "v2.3.4"
  sha256 "c3aa0b7dc2dec6148dfc3c52add47aea3a7913fcc590d5a1994881bec48f53a2"

  def install
    mv('pd-darwin-amd64', 'pd')
    bin.install 'pd'
  end

  test do
    system "#{bin}/pd", 'version'
  end
end
