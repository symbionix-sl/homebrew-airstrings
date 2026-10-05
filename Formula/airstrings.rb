class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.0/airstrings-v0.16.0-darwin-arm64.tar.gz"
      sha256 "b434f0b3ffa4f4e9eaf8be4bebbb447f4474d82c832b576bc7b9d5ff283da369"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.0/airstrings-v0.16.0-darwin-amd64.tar.gz"
      sha256 "d9adecd93170d94ad27e29814357b097723823e9203f827554bf6ede3a815149"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.0/airstrings-v0.16.0-linux-arm64.tar.gz"
      sha256 "2b38f0f6faedf8389555a798f710139ebb7e03e88bdf8482af38b296cf143517"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.0/airstrings-v0.16.0-linux-amd64.tar.gz"
      sha256 "cdb7d0af722861ee1b2d0d63ffc630f6b52a48c42096c7197c1971fe9db2ffcc"
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
