class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v0.20.1/havener-darwin-amd64"
  version "v0.20.1"
  sha256 "00befab1f321419b02971c61b844185a2d0dccdcf445c2212ae3db116b12764f"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
