class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.2/tg-v1.4.2-darwin-arm64.tar.gz"
  version "1.4.2"
  sha256 "79182ae5714caabe582800bd4ad55dd3cede0b1e806cca509cc379527f38c35e"
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
