class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.3/tg-v1.4.3-darwin-arm64.tar.gz"
  version "1.4.3"
  sha256 "eba21116471493c0c7e919cfef83301fbc29d5ca6b97f1962c51bed8626570e3"
  license "MIT"

  depends_on arch: :arm64
  depends_on "rust-silk"

  def install
    bin.install "tg"
    generate_completions_from_executable(bin/"tg", "completions")
  end

  test do
    system bin/"tg", "--version"
  end
end
