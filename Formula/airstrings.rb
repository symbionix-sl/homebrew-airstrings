class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.2/airstrings-v0.4.2-darwin-arm64.tar.gz"
      sha256 "2516bff744c6803ca878113c9c8361e72bf952c0024557dd566978a77857e940"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.2/airstrings-v0.4.2-darwin-amd64.tar.gz"
      sha256 "5d906ba3bbc1cb5cdf3802593530d7af33246325b63cc73cee176acb576822fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.2/airstrings-v0.4.2-linux-arm64.tar.gz"
      sha256 "bf9690bf7ce2579d2633e8518d54d36edf0a76fb77c4aa61c83f63bfcec3b193"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.2/airstrings-v0.4.2-linux-amd64.tar.gz"
      sha256 "5d3a31b7e4dcd4fec36f4a7edd4595fdb6206f24ee76078ac91d55b40bfe596b"
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
