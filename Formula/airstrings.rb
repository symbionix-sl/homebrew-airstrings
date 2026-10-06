class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.0/airstrings-v0.18.0-darwin-arm64.tar.gz"
      sha256 "23e3413aada165e69974c77cbeb3a3d7687b9d1a44d58c9eb57424bc286f89c7"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.0/airstrings-v0.18.0-darwin-amd64.tar.gz"
      sha256 "1a44b6a6a911b6cb3caf4e08ef307130306c3b58ae45b2a30d7563d71a24a22c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.0/airstrings-v0.18.0-linux-arm64.tar.gz"
      sha256 "10ce5d0a1467c9cfd94b98a5d8e64b28d0cb1dd99be8336fb063ec6b5c0dbd36"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.0/airstrings-v0.18.0-linux-amd64.tar.gz"
      sha256 "8c46241c21ff23ae52f43e5021c7d9d66e62f404d3d869e04b2f9a1df0c2aa32"
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
