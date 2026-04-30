class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.0/tg-v1.2.0-darwin-arm64.tar.gz"
  version "1.2.0"
  sha256 "0f36f7a0effb2259ee0aafdf59589292a23cb9349c592df9c961a4ae454d82ed"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
