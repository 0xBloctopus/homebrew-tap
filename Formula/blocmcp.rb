class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.0/blocmcp_v0.1.0_darwin_arm64.tar.gz"
      sha256 "237730957242cc2e754235f67196fce1220653b4281dc5c56c05e69d4bef555f"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.0/blocmcp_v0.1.0_darwin_amd64.tar.gz"
      sha256 "c3b15af2ba23ea1ee1bfa59bda69c43bb11e09282acc942d7e47472b815f3f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.0/blocmcp_v0.1.0_linux_arm64.tar.gz"
      sha256 "db1d976b0f86fb9fa8b6830ae7b9ffae208e0a3ddeae24ac2f726b24e8747657"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.0/blocmcp_v0.1.0_linux_amd64.tar.gz"
      sha256 "39cce18b5a633a2d69957dea82cc293e1a4e73302cc519af84659b90422e5ed6"
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
