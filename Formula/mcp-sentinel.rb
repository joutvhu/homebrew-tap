class McpSentinel < Formula
  desc "Zero-Trust Secret Vault & Security Proxy for Model Context Protocol (MCP)"
  homepage "https://github.com/joutvhu/mcp-sentinel"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joutvhu/mcp-sentinel/releases/download/v1.0.0/mcp-sentinel-aarch64-apple-darwin.tar.gz"
      sha256 "56f6aec2c1380560f5a90a13b6680c8e353f9d2e14ffe193d0b162063c3583ae"
    else
      url "https://github.com/joutvhu/mcp-sentinel/releases/download/v1.0.0/mcp-sentinel-x86_64-apple-darwin.tar.gz"
      sha256 "1d4955508d0644dc7a577eea1ce9a5a412b8c6f6535de1c03349759d809af3a9"
    end
  end

  on_linux do
    url "https://github.com/joutvhu/mcp-sentinel/releases/download/v1.0.0/mcp-sentinel-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0d368783d7daa3631274a80da9f75a6822f91a0ec431e6fb3e5fb603f03b295e"
  end

  def install
    bin.install "mcp-sentinel"
  end

  test do
    assert_match "mcp-sentinel 1.0.0", shell_output("#{bin}/mcp-sentinel --version")
  end
end
