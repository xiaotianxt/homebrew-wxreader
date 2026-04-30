class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.4/tg-v1.2.4-darwin-arm64.tar.gz"
  version "1.2.4"
  sha256 "d51cfc683d3f86e3c14eb06fc3efb3f90bbdd45afdc30dbe9c921b0c6fb005e2"
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
