class PinaGolada < Formula
  desc "pina-golada - a simple asset tool for go, which generates interface implementations that provide files/folders in the final build, without rendering them in the source code themselve"
  homepage "https://github.com/homeport/pina-golada"
  url "https://github.com/homeport/pina-golada/releases/download/v1.4.0/pina-golada-darwin-amd64"
  version "v1.4.0"
  sha256 "35b69e94f058aa178052ef7ad02a16a0ba639727f98b7a69b5c8b19582edacc9"

  def install
    mv('pina-golada-darwin-amd64', 'pina-golada')
    bin.install 'pina-golada'
  end

  test do
    system "#{bin}/pina-golada", 'version'
  end
end
