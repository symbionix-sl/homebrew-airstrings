class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.19.0/airstrings-v0.19.0-darwin-arm64.tar.gz"
      sha256 "83522e8ead453710c7767a2f636150a2d7e2e68e00d2426f2d3d055ac05ec4f2"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.19.0/airstrings-v0.19.0-darwin-amd64.tar.gz"
      sha256 "9e793924bbe8c1597e0d93de6be37a49d282f9dc6bbe7d03dad2a176b4893dc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.19.0/airstrings-v0.19.0-linux-arm64.tar.gz"
      sha256 "42bbb055fc172bbce8c5f26f98b78290cc4487ab5b200d5af504c2fe644eb6fc"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.19.0/airstrings-v0.19.0-linux-amd64.tar.gz"
      sha256 "20c68473eb47d9d4b49d063fc9a6dcfc31d0a130c8fb9e524ce995af5069461f"
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
