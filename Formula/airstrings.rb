class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.0/airstrings-v0.4.0-darwin-arm64.tar.gz"
      sha256 "cfced367308788b5c47f163d089b467b4e84e631fa9b89ad464181ab0164bde6"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.0/airstrings-v0.4.0-darwin-amd64.tar.gz"
      sha256 "af1dcd00a0b93774ef8ce3d40e2c8b1a70694affa7d8565ae1fc3411447ef76e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.0/airstrings-v0.4.0-linux-arm64.tar.gz"
      sha256 "3d677ecca0bfde451fdb1fd0b7a020353929a1acf85e690ce2072a985729723d"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.0/airstrings-v0.4.0-linux-amd64.tar.gz"
      sha256 "9f7a113f6db1cb50e713456159cce962054b67e2c9cb80348586b7232d873a48"
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
