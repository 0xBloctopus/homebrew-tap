class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_darwin_arm64.tar.gz"
      sha256 "ec2a515be69ccc07f450505c5e96e07ccde800d451b42156d579593bf44bacd7"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_darwin_amd64.tar.gz"
      sha256 "b1a5734c13c9556a9e7608e6d4b6b697d11c3fc8642b51aee1a5d261c232534d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_linux_arm64.tar.gz"
      sha256 "4ba3cff7ff40b0e706cbbad2bca52ce5a4efd7a8618b334dbeabbc9aeec6e2b3"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.1/blocmcp_v0.1.1_linux_amd64.tar.gz"
      sha256 "b16e804038099cd071f9495666a504910b5a474a8e571d9ad37c02d8477c37fc"
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
