class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.4.8/tg-v1.4.8-darwin-arm64.tar.gz"
  version "1.4.8"
  sha256 "6cc3930274fefcb313f79d5f78c1d514ca12009553cb0fc4ad995c13ec6c0b1d"
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
