class Mcpify < Formula
  desc "API endpoints as MCP tools"
  homepage "https://github.com/NilayYadav/mcpify"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.11/mcpify-darwin-arm64"
      sha256 "sha256:1d938a96962d5c57c63bb34f2b9e934ac6bd5c16be9934ff235334e0fccc681c"
    else
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.11/mcpify-darwin-amd64"
      sha256 "sha256:27d6f71244497c64616ce0f900e1ea3e3871779433180b4fb6cfefee3cc2ee6f"
    end
  end

  on_linux do
    url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.11/mcpify-linux-amd64"
    sha256 "sha256:25a399c369f4870475ec51f75a5d7bda48a81613a92536aca7fa233555c6d1ea"
  end

  version "1.0.11"

  def install
    bin.install Dir["mcpify-*"].first => "mcpify"
  end

  test do
    system "#{bin}/mcpify", "--version"
  end
end
