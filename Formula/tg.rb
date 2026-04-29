class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.3/tg-v1.1.3-darwin-arm64.tar.gz"
  version "1.1.3"
  sha256 "fa2901ea2b22d34ebe92bb2f44d4aa1cacf80153c0f7cd621d62183ff4585319"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
