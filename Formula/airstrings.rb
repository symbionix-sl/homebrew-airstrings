class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.2/airstrings-v0.18.2-darwin-arm64.tar.gz"
      sha256 "68e8aa710038ecfb384c7cb93e62d4cc3ca7ea22fc2dca7b34dc9ff51d2b056e"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.2/airstrings-v0.18.2-darwin-amd64.tar.gz"
      sha256 "e9569564778dd0f847cdf3673bd43473008044fc039c17a26a8bc3425ab00d28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.2/airstrings-v0.18.2-linux-arm64.tar.gz"
      sha256 "3ca6fb99a08ac472198a59cbcdb6f6416da47acef4f90a5bbeec24abe3729c79"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.2/airstrings-v0.18.2-linux-amd64.tar.gz"
      sha256 "9020d9ad8519f3f640c732f585f98fc3e876cf7dd5c00b8612bb847b3ecc460e"
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
