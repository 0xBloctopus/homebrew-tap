class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.3/blocmcp_v0.1.3_darwin_arm64.tar.gz"
      sha256 "f5ed7901d566f4e6150dc9d98ceaaf3174ab5b1897b2bdc680762e8600684b4f"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.3/blocmcp_v0.1.3_darwin_amd64.tar.gz"
      sha256 "58d3f10a85b4b4c9d04dbee498811b41250b3ebc1e851d1a5e81f6bd52adf987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.3/blocmcp_v0.1.3_linux_arm64.tar.gz"
      sha256 "cf4396d9205f4384007c57f691f6bfe3734253f7e4eca18af6e1acc58eb264c6"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.3/blocmcp_v0.1.3_linux_amd64.tar.gz"
      sha256 "b8f32219f388c9b6999015912b7b184c784767e1c4579130b4da32df166ca20c"
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
