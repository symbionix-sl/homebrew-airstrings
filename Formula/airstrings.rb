class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.5/airstrings-v0.3.5-darwin-arm64.tar.gz"
      sha256 "13806dcd5815e9f41245f28a298c8e9a453fd2d36bb0d12ed472efd93a517292"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.5/airstrings-v0.3.5-darwin-amd64.tar.gz"
      sha256 "5723e57b17d51a202f3cbfbd1f969fe5a18eae33793f16f017cbdbffba4c344a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.5/airstrings-v0.3.5-linux-arm64.tar.gz"
      sha256 "ad3ab54286a2b8ad44f2c4e7f7b5a3fe29f6a79b211a62896cfb4be205a66c9e"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.5/airstrings-v0.3.5-linux-amd64.tar.gz"
      sha256 "07c829845a2efb2b2678f97ca03fe9ff5f34821dd1df43e4d20b8dc917236c1b"
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
