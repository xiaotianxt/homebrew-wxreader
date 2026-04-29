class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.4/tg-v1.1.4-darwin-arm64.tar.gz"
  version "1.1.4"
  sha256 "243bdf7382ea0192b855d986cac9587c5bd2900d733d5c4003f72335f8ccf09b"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
