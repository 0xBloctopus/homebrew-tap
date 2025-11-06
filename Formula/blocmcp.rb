class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.6"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_arm64.tar.gz"
      sha256 "476715bfcf7dff29dabe02017619c4f18378c35ec72261d4f4b537d07d24bbbe"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_amd64.tar.gz"
      sha256 "cf664884e85bf084e529654ee9f58ae39956c19f25870fddf78cc427f0827474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_arm64.tar.gz"
      sha256 "474fe154f88fc3c950d76b543e46b8c4b521076fde1fd48497da1d42a8c9c112"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_amd64.tar.gz"
      sha256 "99bce0f50a2f93d23a5bc93d361925fe076b0fa1f2c78e7c3f0fabcb76169f18"
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
