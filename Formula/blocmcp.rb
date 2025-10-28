class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.2/blocmcp_v0.1.2_darwin_arm64.tar.gz"
      sha256 "2a8bc434488cc3dc3e363d8148fc0f4181eb3195299a15adb39f6982a5883426"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.2/blocmcp_v0.1.2_darwin_amd64.tar.gz"
      sha256 "7393bea0fb1ebee7c4cf19e41fb17538056e29eb34518e7a9070efa56ddd592d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.2/blocmcp_v0.1.2_linux_arm64.tar.gz"
      sha256 "6215eabb1a41cfab1f5785ffe6616b38738019dc41b6eb3c085bb0d50367f2da"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.2/blocmcp_v0.1.2_linux_amd64.tar.gz"
      sha256 "b53a91d879c0b9aa8e1b70582a06a1f2b90ce2a8ff9a0ea565ab15375f6e162f"
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
