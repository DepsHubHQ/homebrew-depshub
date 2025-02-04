class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.11.0"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.11.0/depshub-darwin-arm64"
      sha256 "737eb080ba062c1b78ce5f9381c2726f0ded609dd891e2c028aee79364931762"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.11.0/depshub-darwin-amd64"
      sha256 "3fccdb9d756d6b2963b1ca8626f6392b1782545bfecdefbdf6e7225f18136374"
    end
  end
  
  def install
    if Hardware::CPU.intel?
      mv "depshub-darwin-amd64", "depshub"
    elsif Hardware::CPU.arm?
      mv "depshub-darwin-arm64", "depshub"
    end
    bin.install "depshub"
  end

end
