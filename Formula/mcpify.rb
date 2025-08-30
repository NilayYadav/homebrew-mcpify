class Mcpify < Formula
  desc "API endpoints as MCP tools"
  homepage "https://github.com/NilayYadav/mcpify"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.6/mcpify-darwin-arm64"
      sha256 "ff10ea2a0528d88ae73dc2f905a6c51bc1941872dad0722e5788480f94aa6a10"
    else
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.6/mcpify-darwin-amd64"
      sha256 "5b24f186d30ba155a2756d32696ddad3f15452c1c35fd5b157c25180dc119bf0"
    end
  end

  on_linux do
    url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.6/mcpify-linux-amd64"
    sha256 "b6304b22a6afdc0ffb7b10c9cf8c2f00cc881281880e3d015113e13b9c11047d"
  end

  def install
    bin.install Dir["mcpify-*"].first => "mcpify"
  end

  test do
    system "#{bin}/mcpify", "--version"
  end
end