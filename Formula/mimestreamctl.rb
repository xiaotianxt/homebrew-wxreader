class Mimestreamctl < Formula
  desc "Local command-line automation for Mimestream on macOS"
  homepage "https://github.com/xiaotianxt/mimestreamctl"
  url "https://github.com/xiaotianxt/mimestreamctl/releases/download/v0.1.0/mimestreamctl-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "8079f868575282a90d594baac772e814726ff74eded9bd36d6a4a3a86120cbc7"
  license "MIT"

  depends_on arch: :arm64
  depends_on "python@3.13"

  def install
    bin.install "mimestreamctl"
    libexec.install "mimestream_ax_text.swift"
    inreplace bin/"mimestreamctl",
              "#!/usr/bin/env python3",
              "#!#{Formula["python@3.13"].opt_bin}/python3.13"
    inreplace bin/"mimestreamctl",
              'Path(__file__).with_name("mimestream_ax_text.swift")',
              "Path(\"#{libexec}/mimestream_ax_text.swift\")"
  end

  test do
    system "#{bin}/mimestreamctl", "--help"
  end
end
