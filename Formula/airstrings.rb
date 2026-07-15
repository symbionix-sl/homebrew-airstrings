class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.6/airstrings-v0.13.6-darwin-arm64.tar.gz"
      sha256 "4ed4353df08e46bd162b7458c7294985c3a8073156628424d6693c43435df326"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.6/airstrings-v0.13.6-darwin-amd64.tar.gz"
      sha256 "34fc117b2cbbab893705f1c506d610027e474ae13009f01914d25ed64f365bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.6/airstrings-v0.13.6-linux-arm64.tar.gz"
      sha256 "bee016330b650871f3644dc0b8fe31a5bf11ca52c9ff7db18f63ca51657d78a6"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.6/airstrings-v0.13.6-linux-amd64.tar.gz"
      sha256 "a91ec89a093ce97f49efd0d46951609dd3f529899c90075732bed6fb96ce21ad"
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
