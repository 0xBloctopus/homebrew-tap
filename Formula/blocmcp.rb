class Blocmcp < Formula
  desc "Bloctopus MCP CLI"
  homepage "https://www.bloctopus.io"
  version "0.1.6"
  license :cannot_represent
  version_scheme 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_arm64.tar.gz"
      sha256 "4d732f38cfa0dd9dbafa93bab46866b415c7a85bb30eff4e1d33ae86fba37456"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_darwin_amd64.tar.gz"
      sha256 "34a879545b933d8ad577a5872bbfdc896221631cdc5d194ff77d080c99eac62f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_arm64.tar.gz"
      sha256 "e1bca6e8ed2880f2de9d1522921d02a9a14deb51980f760954f81d7244418d72"
    else
      url "https://github.com/0xBloctopus/homebrew-tap/releases/download/v0.1.6/blocmcp_v0.1.6_linux_amd64.tar.gz"
      sha256 "3d5881b44ecd5af98e016c59b57eb91d6d7d6236a5d1e0877431e910bc798b9d"
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
