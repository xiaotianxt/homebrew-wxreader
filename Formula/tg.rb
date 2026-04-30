class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.9/tg-v1.1.9-darwin-arm64.tar.gz"
  version "1.1.9"
  sha256 "72a2c8979cdab091f7b2907df9f0d616155497df259e87d49541f9896ba804c5"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
