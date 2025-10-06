class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_darwin_arm64.tar.gz"
      sha256 "b01e4972b3bff4697e372f6dfff19793a87309ed3599dffaac65eefce143b773"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_darwin_amd64.tar.gz"
      sha256 "43390e9d1f39e2589ef24fa3b6bbdbf74ed206c0ab9bd4e085b45ede045a27cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_linux_arm64.tar.gz"
      sha256 "16c4bbcca156c4fa3070dabe8147037e61d53006ede3c49e380deb0dfd03fc08"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_linux_amd64.tar.gz"
      sha256 "98886cb9b89d59af8f22c25f9bf1d9fa87e2bef07917c2cdacfbd3b79cce3eb3"
    end
  end

  def install
    # tarballs contain the binary at the top level
    bin.install "blocmcp"
  end

  test do
    system "#{bin}/blocmcp", "help"
  end
end
