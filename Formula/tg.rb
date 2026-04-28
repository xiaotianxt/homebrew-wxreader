class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v0.2.2/tg-v0.2.2-darwin-arm64.tar.gz"
  sha256 "a706e1607af298a0fd1fa284d939be21d93782c04cd4eea2274caf5220f07088"
  license "MIT"
  version "0.2.2"

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
