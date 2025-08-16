class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.9/jfvm-v0.0.9.tar.gz"
  sha256 "cc2e2db09ba33ab6bbbcd22be61e478fec0976604c30dae750df04a22b0ac300"
  version "0.0.9"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
