class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.1/tg-v1.2.1-darwin-arm64.tar.gz"
  version "1.2.1"
  sha256 "5430d197330e61e25fa2327d3e6cd62044fbf8404ce6bc430e97e2a1a9fe981d"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
