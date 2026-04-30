class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.1/tg-v1.4.1-darwin-arm64.tar.gz"
  version "1.4.1"
  sha256 "63dee68db8c5b01c7edc3f292cea5462ecb910f142a1ce0ad6be69f57f186798"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
    generate_completions_from_executable(bin/"tg", "completions")
  end

  test do
    system bin/"tg", "--version"
  end
end
