class Mcpify < Formula
  desc "API endpoints as MCP tools"
  homepage "https://github.com/NilayYadav/mcpify"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.10/mcpify-darwin-arm64"
      sha256 "sha256:6b253f855726a825c20f8d949f7066e994d74768b638203d0cfdfddf9c8dccf1"
    else
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.10/mcpify-darwin-amd64"
      sha256 "sha256:ae727b3768aecaf2829317a5a9f2b8ea92c6e3a7176edc296961596c1b7ef1ee"
    end
  end

  on_linux do
    url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.10/mcpify-linux-amd64"
    sha256 "sha256:33b45085b51055339c34911d2de930a8310cc9a6d5ef60b239e4aa8fda500365"
  end

  version "1.0.10"

  def install
    bin.install Dir["mcpify-*"].first => "mcpify"
  end

  test do
    system "#{bin}/mcpify", "--version"
  end
end
