class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.0/airstrings-v0.1.0-darwin-arm64.tar.gz"
      sha256 "2ff63a651a9ff6164c99b89e54b2414331773631b0cb5a1e61a07b387435f6a5"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.0/airstrings-v0.1.0-darwin-amd64.tar.gz"
      sha256 "64b3e138742c7c8c02d914c626a3dc6aa8319a9a6af19eb4086fbc17d0250c77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.0/airstrings-v0.1.0-linux-arm64.tar.gz"
      sha256 "b5d49e551e72253b78580e6f436274937c7edb19262da6cffe4d41e0b6b8d1b6"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.0/airstrings-v0.1.0-linux-amd64.tar.gz"
      sha256 "9316d8c22a2c64da9ecf810c8b75e12ec29b802f1e007abdb9ee6ab4e083bbfc"
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
