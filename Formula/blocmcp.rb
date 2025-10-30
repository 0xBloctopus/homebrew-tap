class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.4/blocmcp_v0.1.4_darwin_arm64.tar.gz"
      sha256 "d9e0428b4aef34765ce41ea1d49d69edaea2b0a0af08516d0b65c48fb88d92c2"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.4/blocmcp_v0.1.4_darwin_amd64.tar.gz"
      sha256 "3ba4a8bbdc3ce0648359d4fd029554b5bdb3d6e40b259ee65f03ad715d247823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.4/blocmcp_v0.1.4_linux_arm64.tar.gz"
      sha256 "98e98b1f234e6b3bda2e4d5c30785559cd22d64ece5991af2d72a33704cadce5"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.4/blocmcp_v0.1.4_linux_amd64.tar.gz"
      sha256 "ece0a8e10fc26a760c8643f558655dbf40dad5a4a95a19d2ded5fbf17bb92d30"
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
