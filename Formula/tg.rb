class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.6/tg-v1.1.6-darwin-arm64.tar.gz"
  version "1.1.6"
  sha256 "6fc7137ed01e461382e04afce0118959a78aca62f92763a3b1b4f10c47c5b72c"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
