class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.15.0/airstrings-v0.15.0-darwin-arm64.tar.gz"
      sha256 "b31604745549f588698f93255b44256de71f3c7be76c1a4c50c1be3de7e88a91"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.15.0/airstrings-v0.15.0-darwin-amd64.tar.gz"
      sha256 "d6e81137d0ecbef9a3aafe5827c0f1874f2672ce123b9e0e19422583ff9e320f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.15.0/airstrings-v0.15.0-linux-arm64.tar.gz"
      sha256 "846d90ca206a6f3d3ff4ccea86167d99dfc90b366bf5d729f43203c788e42357"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.15.0/airstrings-v0.15.0-linux-amd64.tar.gz"
      sha256 "84d4dd7370c425eb900d9bec09aa418a09512b64b9b532fe1e10a54be3bd72ad"
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
