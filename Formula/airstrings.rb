class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.1/airstrings-v0.16.1-darwin-arm64.tar.gz"
      sha256 "0f7c5fa4190fb32558d79c5cc60fcbd0fbda5cf42004691605aa5e00d3b187a4"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.1/airstrings-v0.16.1-darwin-amd64.tar.gz"
      sha256 "cf853a801bc72afeb0932c9cf6a50f9878abfef26a9f329fecd147acb15f7757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.1/airstrings-v0.16.1-linux-arm64.tar.gz"
      sha256 "81abe8d4b10ccdc75a9f738eca2a391b2385fd500d8f4484202dfeb52aa9c895"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.16.1/airstrings-v0.16.1-linux-amd64.tar.gz"
      sha256 "4ae2cb2d9b320f334dcd6f1006a36d534ae8b023dfb50c8a5d4a43d2b88ff6ca"
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
