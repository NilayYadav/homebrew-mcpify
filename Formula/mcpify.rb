class Mcpify < Formula
  desc "API endpoints as MCP tools"
  homepage "https://github.com/NilayYadav/mcpify"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.8/mcpify-darwin-arm64"
      sha256 "a90ad1d5e3f615be1898d6593ff299eb8e944ffc98b6ae74428f5f41e53dd01e"
    else
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.8/mcpify-darwin-amd64"
      sha256 "d435d47e34813417850b3f165e3f6ee395c3d730ebcf7a828835411f3d0f1ac1"
    end
  end

  on_linux do
    url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.8/mcpify-linux-amd64"
    sha256 "b1502c9a83721e7f731fb30f85f2bb8e400e7fddf207ac04e8661db849edc052"
  end

  def install
    bin.install Dir["mcpify-*"].first => "mcpify"
  end

  test do
    system "#{bin}/mcpify", "--version"
  end
end