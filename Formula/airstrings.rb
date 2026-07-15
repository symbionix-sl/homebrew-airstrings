class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.1/airstrings-v0.13.1-darwin-arm64.tar.gz"
      sha256 "491bf90dc4dedf26a449e659859c72a97a63ce3a00c989838c2c0cda4fcc6119"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.1/airstrings-v0.13.1-darwin-amd64.tar.gz"
      sha256 "35685a1a8c87b0bc5843d878d079b1b2f83ac74c838d5276fe9350b28df3b08f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.1/airstrings-v0.13.1-linux-arm64.tar.gz"
      sha256 "3e74e13825207e8c6bb723674353d8c80e49140e498c8139aa903e2c7e4fb6c5"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.1/airstrings-v0.13.1-linux-amd64.tar.gz"
      sha256 "5a2951d8b4dcd024b34b5fd580fbca4ac49c37ff7896f59ff2eb9595c24c687d"
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
