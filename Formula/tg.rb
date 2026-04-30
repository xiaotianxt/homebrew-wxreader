class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.3.0/tg-v1.3.0-darwin-arm64.tar.gz"
  version "1.3.0"
  sha256 "a5d02b9a860bb4aad92db3d376ac6817e5a6b22ae2fe7997a22e40f399d3f66f"
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
