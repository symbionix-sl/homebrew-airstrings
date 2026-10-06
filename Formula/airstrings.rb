class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.18.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.4/airstrings-v0.18.4-darwin-arm64.tar.gz"
      sha256 "7cfa182b657ae26e11bb4133ca2577a399a50fb32b0be6af408e729fd4d6428e"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.4/airstrings-v0.18.4-darwin-amd64.tar.gz"
      sha256 "0cb620514c48c9f91fe06cf7ce302b9db064b01dbd83d775f413c25db687ee7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.4/airstrings-v0.18.4-linux-arm64.tar.gz"
      sha256 "c0048ddd8eee69f822e8c67367a9478edee0a8328e00913f83be86fc74271dc9"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.18.4/airstrings-v0.18.4-linux-amd64.tar.gz"
      sha256 "d0bdbb328d5d6cd5d82873fa9f7c000f1ca89b8c3e1d51211864b81284919960"
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
