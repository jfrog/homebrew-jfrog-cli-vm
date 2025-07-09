class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.4/jfvm-v0.0.4.tar.gz"
  sha256 "2faaf7b74fb041c979954156adb312b0572572f56ab72d4b6ae3afdb76f9aa70"
  version "0.0.4"

  def install
    bin.install "jfvm"
  end

  test do
    system "#{bin}/jfvm", "--help"
  end
end
