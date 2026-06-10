class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.7/airstrings-v0.3.7-darwin-arm64.tar.gz"
      sha256 "f26e522efe413b7d0ec74cbd06172854a3adb2c4b2e0d90198b97e0a19a43bdb"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.7/airstrings-v0.3.7-darwin-amd64.tar.gz"
      sha256 "f8896fc99350223d9152e4fc1bbff94bbabb1e459d80b7a773dbbcc0b503c766"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.7/airstrings-v0.3.7-linux-arm64.tar.gz"
      sha256 "a946f944b6764edfd620fbb19dc03fa5e85af1269fb0c532212285046d297b44"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.7/airstrings-v0.3.7-linux-amd64.tar.gz"
      sha256 "28656e943634c659359543f6382e1396c3a619b84cbd5272d6059e9a82e60b3d"
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
