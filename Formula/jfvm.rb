class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.8/jfvm-v0.0.8.tar.gz"
  sha256 "373e765f74d3c34b2151e7ef9b85b8aa44d5dc2d8eafbcd0bb7b8970c2217ac7"
  version "0.0.8"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
