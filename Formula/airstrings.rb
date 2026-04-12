class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.3/airstrings-v0.3.3-darwin-arm64.tar.gz"
      sha256 "db4d4ddb3e19304da0037e17856878ae5bde8c69f768b62d4d89483bcad01861"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.3/airstrings-v0.3.3-darwin-amd64.tar.gz"
      sha256 "28c052cf1f550706e57fcb379e3bc7e7bb4b9fbc907616b56f954a3be42f0829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.3/airstrings-v0.3.3-linux-arm64.tar.gz"
      sha256 "7a3448981dbf91985e526929f25807afa6afdc46175993b618cd044f49762a06"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.3/airstrings-v0.3.3-linux-amd64.tar.gz"
      sha256 "8bc1628fd98d3606a1f26960c3cc3d69b38d68923fc80b44dde3a61bf7a5ce3c"
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
