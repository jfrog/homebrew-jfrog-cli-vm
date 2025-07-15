class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.5/jfvm-v0.0.5.tar.gz"
  sha256 "02a0909d0fdb3c6a19cd0fb4ca091d44613f131099ffa0dc312e049646964f89"
  version "0.0.5"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
