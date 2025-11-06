class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.6"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_arm64.tar.gz"
      sha256 "39b6774befd7e0b7bdb249fafc9a0ba4ebeb742022875eb83de0a657c33c3c62"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_amd64.tar.gz"
      sha256 "5d28d525d8059b3ca0904bc7f5330e0365f25fdf9e0b842350c9c452cabacc99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_arm64.tar.gz"
      sha256 "46b66905c32637aa5dde57779412a28c50f6b9d8ddde7585fe45d2dbe85272f2"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_amd64.tar.gz"
      sha256 "96315f56e1078ba5aa335e90b42ce02b4740d7cf70a2fc8abcbe73b65e005a54"
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
