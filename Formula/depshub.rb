class Depshub < Formula
  name "depshub"
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.3"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.3/depshub-darwin-arm64"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.3/depshub-darwin-amd64"
    end
  end
  
  def install
    mv "depshub-darwin-#{Hardware::CPU.arch}", "depshub"
    bin.install "depshub"
  end
end
