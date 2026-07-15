class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.3/airstrings-v0.13.3-darwin-arm64.tar.gz"
      sha256 "4c5a10227f813e887fab8c3bbd4f1e3e3a29f545161c322fe6f985550fe4e14f"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.3/airstrings-v0.13.3-darwin-amd64.tar.gz"
      sha256 "5b268afac5fd1b2f03d88b15a19dadb2f41c0f64d35c3f621e9cea0ce2fa7621"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.3/airstrings-v0.13.3-linux-arm64.tar.gz"
      sha256 "85f70be3c07c37b99b212783c292860e26b3c4c72010024d6294eba447bf3296"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.3/airstrings-v0.13.3-linux-amd64.tar.gz"
      sha256 "d5d7da34afa3cf3f628d285a2f126289768205ba8b523ad248e71623335d97fe"
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
