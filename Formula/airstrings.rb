class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.18.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.3/airstrings-v0.18.3-darwin-arm64.tar.gz"
      sha256 "f125359071ad4e82c26b1319c364cc179c8d411f06b510df359346c37114abfb"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.3/airstrings-v0.18.3-darwin-amd64.tar.gz"
      sha256 "2a691c6c1d1cc6868402727b58e301d1475be1c250b4a99b555a438f7ddd8169"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.3/airstrings-v0.18.3-linux-arm64.tar.gz"
      sha256 "540464be07f88e58cc9f57d27228c3f9a6c1d8dffe07d976e31a87f52fade13f"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.3/airstrings-v0.18.3-linux-amd64.tar.gz"
      sha256 "e9ef6300d8091905dc8f5acb9f6c0983dd493d838523f2e1684417168ce92f61"
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
