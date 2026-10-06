class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.1/airstrings-v0.18.1-darwin-arm64.tar.gz"
      sha256 "cba4b02ff2d6843fc440b2c10d935c751e635162d2fcb3713c23e8b070d25942"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.1/airstrings-v0.18.1-darwin-amd64.tar.gz"
      sha256 "85c80d44f17a1fff5410d9927ce4a7fa8500537459534b516d31e9629d7a1fab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.1/airstrings-v0.18.1-linux-arm64.tar.gz"
      sha256 "9496cd68e4879cbc5df3acf3bfab3fd70e29fad0685a84ee2f132dab1a8552f4"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.1/airstrings-v0.18.1-linux-amd64.tar.gz"
      sha256 "747e5506048b727cb903b7c42e0d210b0f920a2dff104dde499d223e146d4d54"
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
