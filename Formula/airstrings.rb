class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.0/airstrings-v0.9.0-darwin-arm64.tar.gz"
      sha256 "0516df59707d45acbb91c7a2fce0510fc2c96765ae41f7f9441cdf9ef07d3739"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.0/airstrings-v0.9.0-darwin-amd64.tar.gz"
      sha256 "b68f53a909e5530a9283c758e0aa1f371b2502b0733c2001493d4f8f59be3c0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.0/airstrings-v0.9.0-linux-arm64.tar.gz"
      sha256 "2abc3b5c0d7fb7cdce398e9635896c25a9c807d3a5e8fb976ce4d22f176c3c67"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.0/airstrings-v0.9.0-linux-amd64.tar.gz"
      sha256 "b39350e71f6b966f3c499f71def7e74f7e59b0c64d1faf813239bf1869495b8d"
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
