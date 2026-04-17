class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.6/airstrings-v0.3.6-darwin-arm64.tar.gz"
      sha256 "5ab35b353148faa432cee5f12c78073042ccc38ad2d30c56830c4a65eb8864b3"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.6/airstrings-v0.3.6-darwin-amd64.tar.gz"
      sha256 "691ad43f2777a22b788dac5a6b2c5c5dce744c42ec0d6ba43eaaad4a8c487876"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.6/airstrings-v0.3.6-linux-arm64.tar.gz"
      sha256 "ab7ee5d7c89347b981d90149d08f0602251c291e3e1cbd93ad1980198fc5d710"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.6/airstrings-v0.3.6-linux-amd64.tar.gz"
      sha256 "b9fa4e9915876d6709951840008b621304b92dd1c62321f686bb564513b00fd5"
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
