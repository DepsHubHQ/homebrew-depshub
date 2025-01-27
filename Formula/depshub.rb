class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.9.0"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.9.0/depshub-darwin-arm64"
      sha256 "19726e6b2fb10478df3b99ed9a4199250a17d1a622e12ee3f192724b47b222a8"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.9.0/depshub-darwin-amd64"
      sha256 "973715215cc59bf45aafd88d2c7eb9179e5d33bc33e510fe46c833c6f8fa777d"
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
