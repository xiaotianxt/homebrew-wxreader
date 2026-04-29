class Mimestreamctl < Formula
  desc "Local command-line automation for Mimestream on macOS"
  homepage "https://github.com/xiaotianxt/mimestreamctl"
  url "https://github.com/xiaotianxt/mimestreamctl.git",
      tag:      "v0.1.0",
      revision: "3aacfb3109618eb2438c7672479ec95b62da468c"
  license "MIT"

  depends_on "python@3.13"

  def install
    bin.install "mimestreamctl"
    bin.install "mimestream_ax_text.swift"
    inreplace bin/"mimestreamctl",
              "#!/usr/bin/env python3",
              "#!#{Formula["python@3.13"].opt_bin}/python3.13"
  end

  test do
    system "#{bin}/mimestreamctl", "--help"
  end
end
