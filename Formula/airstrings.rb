class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.2/airstrings-v0.3.2-darwin-arm64.tar.gz"
      sha256 "39ae6e31efac4b7e2d62543dcd5bb25c2c71a350d4a6321257ff64fe1efa7dbd"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.2/airstrings-v0.3.2-darwin-amd64.tar.gz"
      sha256 "0821776c0ca142a158d33042ee372e68d1a2ae7cf94a85376b40f34a17af80ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.2/airstrings-v0.3.2-linux-arm64.tar.gz"
      sha256 "24c3ae8e43965853e0930bee19af452fd7c6d49f824d9a842654338ca8e66a00"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.2/airstrings-v0.3.2-linux-amd64.tar.gz"
      sha256 "752a7c47a7d667f838617fa75b3026f00e2d44df0e142ba9b7ee427c5066f258"
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
