class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.7/tg-v1.1.7-darwin-arm64.tar.gz"
  version "1.1.7"
  sha256 "25e766ac01f5fe267df0a3a0f387dedef5fe41212522ff7415ad494b9d62d3b6"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
