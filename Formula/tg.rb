class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.3/tg-v1.2.3-darwin-arm64.tar.gz"
  version "1.2.3"
  sha256 "3b3f811e4b994f662cd30db6f0538827787f9d8905b44fe76aaf04faff1cabc9"
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
