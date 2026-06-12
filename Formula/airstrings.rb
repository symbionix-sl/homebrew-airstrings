class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.7.0/airstrings-v0.7.0-darwin-arm64.tar.gz"
      sha256 "058e866caba744fdd427b1ce6c2920f465445a3205fcf162660dbb41483ad6e2"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.7.0/airstrings-v0.7.0-darwin-amd64.tar.gz"
      sha256 "3026deeef43e41a97a86922c53adf4080e171b891fc2db09e69d87258eb2d59d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.7.0/airstrings-v0.7.0-linux-arm64.tar.gz"
      sha256 "e4e32bd073d74f73f25c7fa726c5d440763e944acdefd34ae5b215af5547e397"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.7.0/airstrings-v0.7.0-linux-amd64.tar.gz"
      sha256 "70cf3dc2fb72240d7cd2107b83372d53079d81a8978a45a72aa2f4f36792a9c0"
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
