class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.22.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.3/airstrings-v0.22.3-darwin-arm64.tar.gz"
      sha256 "b6b78d0920856b7c195811d818a6270785918cb42547c6709aeda2de13bc6602"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.3/airstrings-v0.22.3-darwin-amd64.tar.gz"
      sha256 "a97e38f1275c050660270d8a9ef9e4646b301c896ac328cec8f126b53ff7a8f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.3/airstrings-v0.22.3-linux-arm64.tar.gz"
      sha256 "49535938f9de1af29fc38439a2af662b864a45dbd83196199351d83fc590c58f"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.3/airstrings-v0.22.3-linux-amd64.tar.gz"
      sha256 "4a6727244b3c7f4910fffdc505a432d18069d382279025a653d85910adb57a53"
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
