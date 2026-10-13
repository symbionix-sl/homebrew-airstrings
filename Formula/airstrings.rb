class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.21.0/airstrings-v0.21.0-darwin-arm64.tar.gz"
      sha256 "a1283a32c2daee0c22fdbdd1e37d0c9fdcd4063181780e4bc2a0aa2b713b0d80"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.21.0/airstrings-v0.21.0-darwin-amd64.tar.gz"
      sha256 "2ab1392c47f51556ca41acc4de09602e6bf7c368bbde5d82253256a557f8d0df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.21.0/airstrings-v0.21.0-linux-arm64.tar.gz"
      sha256 "6d2ab643f91965383bac442fce7b98c23940df395dec186f239f356ac4e243db"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.21.0/airstrings-v0.21.0-linux-amd64.tar.gz"
      sha256 "9e08ca80e621295bfa56881f2fa60ba32274e425b466972b5f8e5eb2ba18581c"
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
