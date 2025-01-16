class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.8"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.8/depshub-darwin-arm64"
      sha256 "6ea33b8d84feb7cba4afab511f48116de1196d22210e681d28cb5f4611ccae96"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.8/depshub-darwin-amd64"
      sha256 "5e6ef06ebb35484cf907ab071d02025fb618ffedcd81cdffd6bae3ae0f47a09c"
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
