class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.0/airstrings-v0.14.0-darwin-arm64.tar.gz"
      sha256 "a44bad9e3126d318d736834d06708646c028fb51bc1cbf72fa77caf5706c60ba"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.0/airstrings-v0.14.0-darwin-amd64.tar.gz"
      sha256 "c3f29db0d4d1d0a84c9da04f81c5ab87eb21b2a0349c5dab1a767bf2c93e47d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.0/airstrings-v0.14.0-linux-arm64.tar.gz"
      sha256 "3d5ed2ca97e401ec31936dac6d29dc8fbf16adb30c7dff9fd5a92c81944580d6"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.14.0/airstrings-v0.14.0-linux-amd64.tar.gz"
      sha256 "09c31f1f5edf4eab68e0d407978b9316d10f1a4672b1646c0c5910a37cefff5d"
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
