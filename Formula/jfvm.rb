class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/bhanurp/jfvm"
  url "https://github.com/bhanurp/jfvm/releases/download/v0.0.1/jfvm-v0.0.1.tar.gz"
  sha256 "0748a387af78c5ce508c5fc2a4d0bc4806d821d05ac0ef3cb9573694b1992554"
  version "0.0.1"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
