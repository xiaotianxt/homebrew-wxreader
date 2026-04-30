class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.2/tg-v1.2.2-darwin-arm64.tar.gz"
  version "1.2.2"
  sha256 "aae86b511a784a947ba8a387d9fdef765b28df424b6c48629d2fc04dedef434a"
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
