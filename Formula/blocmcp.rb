class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_darwin_arm64.tar.gz"
      sha256 "0c19d5bcf1e94b968cea25b0a686bb21bdaf1fc7236973cba997b83dd50616b0"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_darwin_amd64.tar.gz"
      sha256 "867fb19dd02a7bdc3de41b7079d8394a304348000c5474485e9ffc829b2b769c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_linux_arm64.tar.gz"
      sha256 "ec5ca6154075ed5b9dac16ba731bbf00325a1c8b737e071bc5cc5ce9ca0e41c3"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_linux_amd64.tar.gz"
      sha256 "b0bc461773f919130113d8e25c92480667be0b2fd85053a44a4b63247a1342ef"
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
