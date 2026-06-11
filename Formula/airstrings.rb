class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.8/airstrings-v0.3.8-darwin-arm64.tar.gz"
      sha256 "8d1fe7bbecaeaa3c2d84175f3f4140c4be5db2b5530c83911ec80371780fc687"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.8/airstrings-v0.3.8-darwin-amd64.tar.gz"
      sha256 "a4a0461496bbe44f270fa96996ad4598b99be02c1c3897eb0b035e5e8d2591c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.8/airstrings-v0.3.8-linux-arm64.tar.gz"
      sha256 "d5133e4ef97e0f3f720f2d301cce6513ffcd0405ae9fb6ce49973497ebaf0a3c"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.8/airstrings-v0.3.8-linux-amd64.tar.gz"
      sha256 "887be7e4b6625d4e819d7101ac8a7b6c848658228de14f37dea654d34cdc45f1"
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
