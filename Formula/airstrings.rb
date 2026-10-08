class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.20.0/airstrings-v0.20.0-darwin-arm64.tar.gz"
      sha256 "aa6bdbd8ca89f81f21ee7005d13f4710d45c8950804b8bc9c497aea7bb091857"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.20.0/airstrings-v0.20.0-darwin-amd64.tar.gz"
      sha256 "070e0cdae2672aabdb6b9c21f013402bf74e7752934fad619e1e85634ecfe512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.20.0/airstrings-v0.20.0-linux-arm64.tar.gz"
      sha256 "3d66352022bd691bf3b722ca216bc93f00c340b55c7187e7c9f667f75f0237f5"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.20.0/airstrings-v0.20.0-linux-amd64.tar.gz"
      sha256 "90b4373b804bf4541f263348590a9bcc2accfbfff6edf8fdcf666bdc7670e247"
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
