class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.4/airstrings-v0.13.4-darwin-arm64.tar.gz"
      sha256 "a8247702cf35618c61643c24e0c0efc9e5bbf8f167870ad8ee95c926a53137ca"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.4/airstrings-v0.13.4-darwin-amd64.tar.gz"
      sha256 "eb4c3b357cf34608a3b5ce432aefcb74819667e673367122398ba3ab331a4d28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.4/airstrings-v0.13.4-linux-arm64.tar.gz"
      sha256 "8d6ae3ef7d2654801c90f726b83044b068f90dca262c9b4de854c74d0e64a2fe"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.4/airstrings-v0.13.4-linux-amd64.tar.gz"
      sha256 "b5d95b0e3196a22e661e5d0021ba7c3435d3b9f66602da040c17135f7f723b06"
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
