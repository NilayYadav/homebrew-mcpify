class Mcpify < Formula
  desc "API endpoints as MCP tools"
  homepage "https://github.com/NilayYadav/mcpify"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.9/mcpify-darwin-arm64"
      sha256 "sha256:sha256:fc8d6754c893061867134e9bc8b9bc11f8457675243fde0d0f43295e232f9039"
    else
      url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.9/mcpify-darwin-amd64"
      sha256 "sha256:86362cd9abcf47f0fe24460999756fbc6383e0b7eddab0b8de75ccd77e777c4b"
    end
  end

  on_linux do
    url "https://github.com/NilayYadav/mcpify/releases/download/v1.0.9/mcpify-linux-amd64"
    sha256 "sha256:2cb78b8edca694f4456d1084718311ad1bb63d4b03ecf3fa24449a8a159f8c71"
  end

  def install
    bin.install Dir["mcpify-*"].first => "mcpify"
  end

  test do
    system "#{bin}/mcpify", "--version"
  end
end