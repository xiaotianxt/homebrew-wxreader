class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.11/tg-v1.1.11-darwin-arm64.tar.gz"
  version "1.1.11"
  sha256 "fda0f3022c809722c9564a67a3a0b07a0447f57dbcb470cb4ec4c607c97c8fb7"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
