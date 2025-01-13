class Depshub < Formula
  desc "DepsHub is a tool to manage your dependencies"
  homepage "https://github.com/DepsHubHQ/depshub"
  version "0.8.6"
  license "AGPL-3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.6/depshub-darwin-arm64"
      sha256 "b2315c53a68327d2b2f9b94ae1ff01aab71bd75769354d6a89b9112fa4c26e97"
    end
    on_intel do
      url "https://github.com/DepsHubHQ/depshub/releases/download/v0.8.6/depshub-darwin-amd64"
      sha256 "a3e77f744a7782a7dc9f7163fd0880a487e8bf02654e0cac3257c068aa7f7eef"
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
