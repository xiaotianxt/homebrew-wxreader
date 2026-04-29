class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.2/tg-v1.1.2-darwin-arm64.tar.gz"
  version "1.1.2"
  sha256 "190526619f9e1a42d6107ac4c79a3c41255b6018f3bc99e365ca79adc2401df4"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
    bin.install "scanner_macos"
  end

  test do
    system bin/"tg", "--version"
  end
end
