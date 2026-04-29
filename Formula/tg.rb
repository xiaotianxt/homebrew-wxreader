class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg.git",
      tag:      "v1.1.1",
      revision: "035917988ab4b8b419ce53c55fc64930bb497849"
  license "MIT"

  head "https://github.com/xiaotianxt/tg.git", branch: "main"

  depends_on "rust" => :build
  depends_on arch: :arm64

  def install
    system ENV.cc, "-O2", "-o", "scanner_macos",
           "vendor/find_all_keys_macos.c",
           "-framework", "Foundation"
    system "cargo", "install", "--bin", "tg", "--root", prefix, "."
    bin.install "scanner_macos"
  end

  test do
    system bin/"tg", "--version"
  end
end
