class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.0/tg-v1.4.0-darwin-arm64.tar.gz"
  version "1.4.0"
  sha256 "f05215a71f7ba4b5cf762450acd1bc6b0a9064aa536e813ea2775e2f0e3e5a94"
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
