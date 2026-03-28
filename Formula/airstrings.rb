class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.1/airstrings-v0.1.1-darwin-arm64.tar.gz"
      sha256 "14319c346e635d1e7d9956f4cbeb029e2508c7bd070d0210f003f2a75bafabb2"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.1/airstrings-v0.1.1-darwin-amd64.tar.gz"
      sha256 "a32dc903b6dea8b20a080ee5d2fa5bc8e43428cfabcae070c5b22f1a8479e6f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.1/airstrings-v0.1.1-linux-arm64.tar.gz"
      sha256 "cb91fbba659883619d18e4ff1ed6106afdff8d1adbae6362a1c09e3ecd35950e"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.1/airstrings-v0.1.1-linux-amd64.tar.gz"
      sha256 "2498da8fb4796794032e52134ab2603c0e5714ff1fb89f36c7c650e17578c05a"
    end
  end

  def install
    bin.install "airstrings"
    bin.install "airstrings-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airstrings version")
  end
end
