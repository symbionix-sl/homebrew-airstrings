class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.5.0/airstrings-v0.5.0-darwin-arm64.tar.gz"
      sha256 "1503810d72a1b301f535ab8ccd0727a2ab21a0afbab3e346cc33325edcc5ea2a"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.5.0/airstrings-v0.5.0-darwin-amd64.tar.gz"
      sha256 "47511d2c4f483ed359308d4688b783beb2b12a5ed1d4faab83e47cc4545f54e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.5.0/airstrings-v0.5.0-linux-arm64.tar.gz"
      sha256 "50ce11a0e392bdad3d8429990ac82daa0533a2445cb037d0f8d395f831816ce0"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.5.0/airstrings-v0.5.0-linux-amd64.tar.gz"
      sha256 "0ae7b7f217665be5b0f733449dbfde7916491fdf8fec73995db0e1587fed9589"
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
