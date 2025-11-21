class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.8"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.8/blocmcp_v0.1.8_darwin_arm64.tar.gz"
      sha256 "989e9ef77df8b6309757b95ee3396eb1d4af091407630c2646d81aed5b439471"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.8/blocmcp_v0.1.8_darwin_amd64.tar.gz"
      sha256 "74cda1bed42de2903fabfba5425ba3af54a39d7e79865af81cd56d6870463482"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.8/blocmcp_v0.1.8_linux_arm64.tar.gz"
      sha256 "19ac6d1378a1d8f7ba40d01e2b7f552c929b8201a01926021f779b048e6a2c93"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.8/blocmcp_v0.1.8_linux_amd64.tar.gz"
      sha256 "c2dad1cfeb969e26783a70988b494e761ffad5f59186fa85507108c9b6dcc600"
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
