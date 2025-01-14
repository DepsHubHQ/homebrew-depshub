class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.7"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.7/depshub-darwin-arm64"
      sha256 "3f7597d867c306ca570f1aefc25c1a2357482502eb2c65efcfb153f29fce98ad"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.7/depshub-darwin-amd64"
      sha256 "45b81cc8e2ce9ef8be4ea2beeb77c997185c85d319e7fbe6c43e230956ba6d1d"
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
