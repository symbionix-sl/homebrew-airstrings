class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.3/airstrings-v0.4.3-darwin-arm64.tar.gz"
      sha256 "f78608da2ae067376e6aacb7aef283564657576ea184309d2eb10cb5a454ca07"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.3/airstrings-v0.4.3-darwin-amd64.tar.gz"
      sha256 "36d9fcd3e40a75efd615a59e75c9a5cd1b3c45d06e7b3c6a6a009bd8db9a1227"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.3/airstrings-v0.4.3-linux-arm64.tar.gz"
      sha256 "e1b048949c2d157fe613f1afcc3bad43fa764c957b13d1cc96ad0d039c76996f"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.3/airstrings-v0.4.3-linux-amd64.tar.gz"
      sha256 "987c809910cfacb06a34f360213ff354e98947780908ea4daa2aee876326744c"
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
