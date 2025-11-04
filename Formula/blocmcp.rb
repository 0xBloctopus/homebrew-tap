class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.5"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.5/blocmcp_v0.1.5_darwin_arm64.tar.gz"
      sha256 "40b4dcce182926dcf7d8215b134fe98b580e3d6b3440c375ef7219400a8bad58"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.5/blocmcp_v0.1.5_darwin_amd64.tar.gz"
      sha256 "9a22666cd65339bd4fa784e27a3918832ba3abb0cc50a501acd219505bee46f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.5/blocmcp_v0.1.5_linux_arm64.tar.gz"
      sha256 "2171a652deb977800dbaa9ec22a53835e6ff3974f5d21062e4734649360e5b9a"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.5/blocmcp_v0.1.5_linux_amd64.tar.gz"
      sha256 "d7c174e9e309d12cba64f2200516b12299a74969ff320fe166ca35f32281c8c2"
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
