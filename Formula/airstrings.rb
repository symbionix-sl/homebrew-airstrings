class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.1/airstrings-v0.14.1-darwin-arm64.tar.gz"
      sha256 "3fa6d983f34e279f94bdc0f69d192fd837b992cbbcba9bc742d7788502a63dd3"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.1/airstrings-v0.14.1-darwin-amd64.tar.gz"
      sha256 "6ced40bae139b2a49e4b2ff65adb01ef881c3d045d02c2442688694af0b2a35e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.1/airstrings-v0.14.1-linux-arm64.tar.gz"
      sha256 "bf383bc237962acf3b27dc6342f4642669f287db3c0e913ff351c6554dc36a63"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.1/airstrings-v0.14.1-linux-amd64.tar.gz"
      sha256 "17c33e37ec502304d9f949e2e3b4feca701771431da342b2fa283d438fb25bc9"
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
