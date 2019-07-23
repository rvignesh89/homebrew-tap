class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.0.0/havener-darwin-amd64"
  version "v1.0.0"
  sha256 "26159503f484b282b5becd7ebcb59e39a91d0e5ad88a1d60f61188032cdab87f"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
