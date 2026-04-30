class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.8/tg-v1.1.8-darwin-arm64.tar.gz"
  version "1.1.8"
  sha256 "20c548b0cd5f97c7c889a5ec77183584ea3b66a35d74664b9c75f9b85d29b9d0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
