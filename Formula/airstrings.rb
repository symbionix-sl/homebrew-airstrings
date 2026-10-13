class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.2/airstrings-v0.22.2-darwin-arm64.tar.gz"
      sha256 "6c802f4b40107c14817f78ba709ea7b056ead103180c8ef734929341576d616c"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.2/airstrings-v0.22.2-darwin-amd64.tar.gz"
      sha256 "942a6d2f9b0c9d6c8a2e73d34c75bff3ac4faebc4d010cfc59ba5bec23a3ea04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.2/airstrings-v0.22.2-linux-arm64.tar.gz"
      sha256 "c31ac1f38971661a19a2383db10a25f0e6d10c8ba5c371484daf3485148cd145"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.2/airstrings-v0.22.2-linux-amd64.tar.gz"
      sha256 "d4bec00845fc2f21df80223aa1cd87cb849ca82c7b2b909b48b5302ebc85d3c9"
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
