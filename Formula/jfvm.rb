class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/bhanurp/jfvm"
  url "https://github.com/bhanurp/jfvm/releases/download/v0.0.2/jfvm-v0.0.2.tar.gz"
  sha256 "27c46cff15cffb0a75fda1aa1111ab3f366cd66ad9ce06a136bb97fa4af8c8cc"
  version "0.0.2"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
