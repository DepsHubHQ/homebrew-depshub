class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.4"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.4/depshub-darwin-arm64"
      sha256 "0fa3113470b81fc37872ad48a8a621971fcac71cf7c63fe2a57a49b4c60598d6"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.4/depshub-darwin-amd64"
      sha256 "7da44e4945a3a426cfcd45042eabd7a1f5d1178c183b82641d8c247b8f0bd01b"
    end
  end
  
  def install
    mv "depshub-darwin-#{Hardware::CPU.arch}", "depshub"
    bin.install "depshub"
  end
end
