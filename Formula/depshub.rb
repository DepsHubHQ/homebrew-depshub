class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.10.0"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.10.0/depshub-darwin-arm64"
      sha256 "cc2ae25fbb1973456f7d9d2d89552f2637e0edddb0c4e0d349e040fac75c1cee"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.10.0/depshub-darwin-amd64"
      sha256 "cc06b739e8eaabcd889bef7b4a4129c0eddb18417bdbdd6c32cc46a237c961f9"
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
