class RustSilk < Formula
  desc "SILK v3 encoder and decoder CLI"
  homepage "https://github.com/wangnov/rust-silk"
  url "https://crates.io/api/v1/crates/rust-silk/0.1.0/download"
  sha256 "ff872e7d5808b092b18d8a696f4cd45717d03fefeac498d535aca84461184559"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/xiaotianxt/homebrew-tap/releases/download/rust-silk-0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ce486d15c7d52835ea489794d3b42c77513b7153c37862a81413f67b24a51328"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SILK", shell_output("#{bin}/rust-silk --help 2>&1")
  end
end
