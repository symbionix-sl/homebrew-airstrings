class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.3/airstrings-v0.1.3-darwin-arm64.tar.gz"
      sha256 "8ebcb8be7d5f8e5caa5e31c03c91afdd3a60c13edc6e7962f173ea44934517d1"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.3/airstrings-v0.1.3-darwin-amd64.tar.gz"
      sha256 "9a52458cca576391a405249e10af50ccbf48a5bb932d1bc1e5a451c42e5e9037"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.3/airstrings-v0.1.3-linux-arm64.tar.gz"
      sha256 "e18434339480c8cbc9851456e421e89625e167a9fc105c49d827bc07fc94f1dd"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.3/airstrings-v0.1.3-linux-amd64.tar.gz"
      sha256 "7d389b6d22279b8b64677757792400dcaf7ccfe7624541b6dd69670890fabec0"
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
