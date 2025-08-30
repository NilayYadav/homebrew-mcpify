# class Mcpify < Formula
#   desc "API endpoints as MCP tools"
#   homepage "https://github.com/NilayYadav/mcpify"
#   url "https://github.com/NilayYadav/mcpify/archive/v1.0.6.tar.gz"
#   sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
#   license "MIT"
  
#   depends_on "go" => :build
#   depends_on "libpcap" 
  
#   def install
#     system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"mcpify"), "./cmd/mcpify"
#   end
  
#   test do
#     system "#{bin}/mcpify", "--version"
#   end
# end
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