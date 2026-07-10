class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.10.0/airstrings-v0.10.0-darwin-arm64.tar.gz"
      sha256 "24549e2425f30203b8bf3477f4dee8faad09e7fec7c68995c35fcefbf48cad94"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.10.0/airstrings-v0.10.0-darwin-amd64.tar.gz"
      sha256 "1f77dbe1d7c9d07dbd56b0a8577f23537a8a4839d3fe8c2a2fae9dcb1a469026"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.10.0/airstrings-v0.10.0-linux-arm64.tar.gz"
      sha256 "b3e71fa99025ccd638688b1d0186d66960bbde5d51a449435e11f3874460db27"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.10.0/airstrings-v0.10.0-linux-amd64.tar.gz"
      sha256 "a09d1873ef9d07a31cb01c08a655102c64eb7e4b9fcda5d27bc88df5a7b10371"
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
