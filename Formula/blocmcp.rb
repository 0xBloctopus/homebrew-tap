class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.8/blocmcp_v0.0.8_darwin_arm64.tar.gz"
      sha256 "1f90c97a14a721b37c6fb557a18c56dcadf137d0dd618ea2633d467ddda8c81e"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.8/blocmcp_v0.0.8_darwin_amd64.tar.gz"
      sha256 "fde8cd4f620aaa75e8cdb9cbb7836d2c359fca712f3ccaf94efdc97bbf8b9b78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.8/blocmcp_v0.0.8_linux_arm64.tar.gz"
      sha256 "8b78ff94e8774ea9dd7e99c63ce802db0bb6dc7098fc025d019ee99268920bb7"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.0.8/blocmcp_v0.0.8_linux_amd64.tar.gz"
      sha256 "63982f8daebbd39a3b304888d5dda129d45d8ea7d34af79ba53c378bb5bec47c"
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
