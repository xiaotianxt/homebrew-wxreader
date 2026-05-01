class RustSilk < Formula
  desc "SILK v3 encoder and decoder CLI"
  homepage "https://github.com/wangnov/rust-silk"
  url "https://crates.io/api/v1/crates/rust-silk/0.1.0/download"
  sha256 "ff872e7d5808b092b18d8a696f4cd45717d03fefeac498d535aca84461184559"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/xiaotianxt/homebrew-tap/releases/download/rust-silk-0.1.0"
    rebuild 1
    sha256 cellar: :any, arm64_sequoia: "b252da47ef28407175aa95ea991441b252a43977a2bc66a7bee91403a04fb012"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SILK", shell_output("#{bin}/rust-silk --help 2>&1")
  end
end
