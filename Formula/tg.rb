class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.0.0/tg-v1.0.0-darwin-arm64.tar.gz"
  sha256 "29a6e4b7b060a6530910e58906ea2f180af24293827caa01886bf2accf63ceef"
  license "MIT"
  version "1.0.0"

  depends_on arch: :arm64

  head do
    url "https://github.com/xiaotianxt/tg.git", branch: "main"
    depends_on "rust" => :build
  end

  def install
    if build.head?
      system "cc", "-O2", "-o", "scanner_macos",
             "vendor/find_all_keys_macos.c",
             "-framework", "Foundation"
      system "cargo", "install", "--bin", "tg", "--root", prefix, "."
      bin.install "scanner_macos"
    else
      bin.install "tg"
      bin.install "scanner_macos"
    end
  end

  test do
    system "#{bin}/tg", "--version"
  end
end
