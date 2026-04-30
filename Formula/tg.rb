class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.2.5/tg-v1.2.5-darwin-arm64.tar.gz"
  version "1.2.5"
  sha256 "186c6cd919130c8d56dc0d19483df67a9df77432ac2133f4744f03bd84762532"
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
