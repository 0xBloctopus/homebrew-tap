class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.7"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.7/blocmcp_v0.1.7_darwin_arm64.tar.gz"
      sha256 "55a39e02c8d349de0b69ca9dce4bddcf4898fe3a5b72ad3fb278edd76b190aa9"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.7/blocmcp_v0.1.7_darwin_amd64.tar.gz"
      sha256 "b995443a59129c57f0eec70016d82049e322643aa132e4c2ccef42f917234cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.7/blocmcp_v0.1.7_linux_arm64.tar.gz"
      sha256 "4d32fedb2e6149607c4bbc0d922a97895eda4c7b8c1bccaf97dc7f587019efee"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.7/blocmcp_v0.1.7_linux_amd64.tar.gz"
      sha256 "bd6286d4b602a8a944b02e0f9cfcc7b67506b9434017e82e5b8c31ce1e8af8f8"
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
