class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_darwin_arm64.tar.gz"
      sha256 "f1cb44d1f69a7d65c1f130fb84933dd2b1dd031bdfb35e4e42f16f686d4c6e0c"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_darwin_amd64.tar.gz"
      sha256 "1a7d7a216c588868e924669fad06af3bb85639d3d0dcc06ae64ae00baa1b5c0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_linux_arm64.tar.gz"
      sha256 "951393c36dcb669198a52b0c109960c64205239f5cb059c764eb44045c510fb7"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.1/blocmcp_v0.0.1_linux_amd64.tar.gz"
      sha256 "061ad6e67a0efb7ee2cc456092312948e6a8b88234516504b1eeb3c0111cad5e"
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
