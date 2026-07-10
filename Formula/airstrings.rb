class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.1/airstrings-v0.9.1-darwin-arm64.tar.gz"
      sha256 "c3aa1068497d00e7f4b74e9e27c7646729bfb58a3c57c5b82a3723a921f69638"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.1/airstrings-v0.9.1-darwin-amd64.tar.gz"
      sha256 "e85552ecc892aa1912188a4ab55cd8b460f093257c8fcc58e8ffbbd844d42649"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.1/airstrings-v0.9.1-linux-arm64.tar.gz"
      sha256 "8f3753579edd234ce2464a7c48a3b43e41adb70716d4bf6fa520c367cde28657"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.9.1/airstrings-v0.9.1-linux-amd64.tar.gz"
      sha256 "aef0962c0a60683b952ff6031d0b24e577af47897b883248544045a4e8327448"
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
