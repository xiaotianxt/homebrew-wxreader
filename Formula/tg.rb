class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.5/tg-v1.1.5-darwin-arm64.tar.gz"
  version "1.1.5"
  sha256 "a2d7787dac321587134607c139824200774ff4141e11d3809510bcde1e40e57b"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
