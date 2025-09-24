class Jfvm < Formula
  desc "Manage multiple versions of JFrog CLI"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  version "0.0.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.10/jfvm-v0.0.10-darwin-arm64.tar.gz"
      sha256 "748520124ae097fb74cf36730b046233662efdd602ff040ffd48bd7f587eebc0"
    end
    on_intel do
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.10/jfvm-v0.0.10-darwin-amd64.tar.gz"
      sha256 "159a9c633ba7ee6dea5f0ec45192385850c2a02188be942acb0f611b9e96f640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.10/jfvm-v0.0.10-linux-arm64.tar.gz"
      sha256 "7549baa0f4d2a1422c8d60156b3d5ced490dcf8c3af2cf6356647e1fac5b33e0"
    end
    on_intel do
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.10/jfvm-v0.0.10-linux-amd64.tar.gz"
      sha256 "e60ccce6a99747ccb347ecd9d2659cfd78cef205194055dfe8951a0687e8937f"
    end
  end

  def install
    bin.install "jfvm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jfvm --version")
    assert_match "Manage multiple versions of JFrog CLI", shell_output("#{bin}/jfvm --help")
  end
end
