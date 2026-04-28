class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xiaotianxt/tg/releases/download/v0.1.0/tg-v0.1.0-darwin-arm64.tar.gz"
      sha256 "e5dee583b164f9f7c12d21c15af8b0faa57af9d0bab11c4ce7f3ebba81d9ebf4"
    else
      url "https://github.com/xiaotianxt/tg/releases/download/v0.1.0/tg-v0.1.0-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

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
    system "#{bin}/tg", "--help"
  end
end
