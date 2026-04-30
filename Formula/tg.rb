class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.10/tg-v1.1.10-darwin-arm64.tar.gz"
  version "1.1.10"
  sha256 "f65e930028a921e6b4887211d7f30985a43432bb04d00af13c283e22d198be38"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
