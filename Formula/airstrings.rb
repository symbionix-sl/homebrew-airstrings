class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.0/airstrings-v0.17.0-darwin-arm64.tar.gz"
      sha256 "58f5a73a76a6e923d0fdb0010e52cf52d2e2a5111c9d7585a5dfbf6677e4ea84"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.0/airstrings-v0.17.0-darwin-amd64.tar.gz"
      sha256 "df20149ddf42b37e82d248de63aa1501ee804f84543ce7f44b98fdba1015630d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.0/airstrings-v0.17.0-linux-arm64.tar.gz"
      sha256 "225d075eb3dc5d34afeac642521ddfaa501325782cdc28acf40477ab76088f68"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.0/airstrings-v0.17.0-linux-amd64.tar.gz"
      sha256 "468cf488b8d790e0babeffd8f734a8a50302159283266bd63767e3998de26c0e"
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
