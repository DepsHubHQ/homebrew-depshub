class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.3"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.3/depshub-darwin-arm64"
      sha256 "#{%x(sha256sum dist/macos-arm64/depshub-darwin-arm64).split.first}"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.3/depshub-darwin-amd64"
      sha256 "#{%x(sha256sum dist/macos-amd64/depshub-darwin-amd64).split.first}"
    end
  end
  
  def install
    bin.install "depshub"
  end
end
