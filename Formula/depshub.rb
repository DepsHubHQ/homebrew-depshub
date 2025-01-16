class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.9"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.9/depshub-darwin-arm64"
      sha256 "7beb0daa87c6032dd054558274a465ed9029c1d5ca0b59a3489f4272c644d16c"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.9/depshub-darwin-amd64"
      sha256 "2a831e6b968279226f87988b8f971012b4ba6f324c83e35530d6a41638186f84"
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
