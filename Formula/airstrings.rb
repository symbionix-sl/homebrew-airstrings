class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.2.0/airstrings-v0.2.0-darwin-arm64.tar.gz"
      sha256 "759dfe6c67ebf785e99b8f0795a85f5d9e592bb620c8dcbdf015af6919607bd2"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.2.0/airstrings-v0.2.0-darwin-amd64.tar.gz"
      sha256 "560180f1391ecb0bc3840314556349cd097607a99ebfaf5cac09cc1cca56c988"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.2.0/airstrings-v0.2.0-linux-arm64.tar.gz"
      sha256 "aa72bd7aa872bbb475830b454dc4bd79bad12c07e44b5502a7ef7b7c0e21fb87"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.2.0/airstrings-v0.2.0-linux-amd64.tar.gz"
      sha256 "167ddc26e239cc2c38139834016329657e698c836085829fa45aa0382c1d0170"
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
