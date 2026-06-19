class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.8.0/airstrings-v0.8.0-darwin-arm64.tar.gz"
      sha256 "9eb1a9a0106b08bf317f4446b4bfcd2f7243664f2813be5729e2698bc16a8911"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.8.0/airstrings-v0.8.0-darwin-amd64.tar.gz"
      sha256 "6393ea9ed8f24cbea25b81c9961cf2e2e816a7ab39b36d48ee28327fdcd77b93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.8.0/airstrings-v0.8.0-linux-arm64.tar.gz"
      sha256 "3d6364f52fe6981feab7443d4c7038395aebd080e71767f528d26b20a1103d52"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.8.0/airstrings-v0.8.0-linux-amd64.tar.gz"
      sha256 "442190dba7760ff88ab5700a9070a48ec614d3e28e59add559101a2b5a43fbcb"
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
