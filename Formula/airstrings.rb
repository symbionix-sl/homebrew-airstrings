class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.1/airstrings-v0.22.1-darwin-arm64.tar.gz"
      sha256 "fd5ddecb442e09bba5daba50621c98f1e3c1cc7e5a4adaaff25cf19dc090667c"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.1/airstrings-v0.22.1-darwin-amd64.tar.gz"
      sha256 "a5ef14d746e9e262f7a2b01dbcdbd336e4e45595f68cd8ab1e258901b625e963"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.1/airstrings-v0.22.1-linux-arm64.tar.gz"
      sha256 "bc393d2b70f1a44d663ea5ceb52d8bd2a5bd50a03fc337174149b86ba5e93700"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.1/airstrings-v0.22.1-linux-amd64.tar.gz"
      sha256 "3ddbf420ef82428c09844863bcd0b48d4d508b7f16ce1565a71d641975fa44d4"
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
