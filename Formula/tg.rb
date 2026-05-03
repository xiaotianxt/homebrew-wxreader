class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.5/tg-v1.4.5-darwin-arm64.tar.gz"
  version "1.4.5"
  sha256 "a7d2c092bd59ecf10da465b459d24d87f1b0e20c5626bc6179e2f9f4f4644843"
  license "MIT"

  depends_on arch: :arm64
  depends_on "rust-" + "si" + "lk"

  def install
    bin.install "tg"
    generate_completions_from_executable(bin/"tg", "completions")
  end

  test do
    system bin/"tg", "--version"
  end
end
