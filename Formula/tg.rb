class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.6/tg-v1.4.6-darwin-arm64.tar.gz"
  version "1.4.6"
  sha256 "a9cd66879e3ee9eb2b08aeabd6d7870a260bcab10d1759cc5a5f8b0f12cdb11b"
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
