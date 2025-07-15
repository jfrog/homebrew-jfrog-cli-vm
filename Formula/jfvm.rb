class Jfvm < Formula
  desc "JFrog CLI Version Manager"
  homepage "https://github.com/jfrog/jfrog-cli-vm"
  version "0.0.6"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.6/jfvm-darwin-arm64"
      sha256 "2bd4c111ee275d73e6384b9c26573d19572eeffeaaf7d4ebc237e6c3b076afa4"
    else
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.6/jfvm-darwin-amd64"
      sha256 "aa6e641cd12a2853423dd779cea86c7a4b5b254f71850e7a193f7f60181663b9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.6/jfvm-linux-arm64"
      sha256 "2f99e61da557543add6bbad3522ae5880a7ab999e8887c21c428c16c1a1ec09f"
    else
      url "https://github.com/jfrog/jfrog-cli-vm/releases/download/v0.0.6/jfvm-linux-amd64"
      sha256 "f8248e3c7da1f9ebfee9cf8ac896f65c8a46ffbd5a1405e5a2b235c262a24e13"
    end
  end
  
  def install
    bin.install "jfvm-#{OS.mac? ? 'darwin' : 'linux'}-#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "jfvm"
  end
  
  test do
    system "#{bin}/jfvm", "--version"
  end
end
