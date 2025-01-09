class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.5"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.5/depshub-darwin-arm64"
      sha256 "59d612ae5b58113b45e50b924309df1ae5458b41299e063968244229ddb0d48d"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.5/depshub-darwin-amd64"
      sha256 "b426549f1e1d9ca68b7d4593582a1f02b6da5353fe8a76e752533dd77f04253b"
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
