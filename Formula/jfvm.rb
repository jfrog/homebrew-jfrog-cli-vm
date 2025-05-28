class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/bhanurp/jfvm"
  url "https://github.com/bhanurp/jfvm/releases/download/v2.0.0/jfvm-v2.0.0.tar.gz"
  sha256 "<INSERT_SHA256>"
  version "0.0.1"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end