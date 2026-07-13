class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.12.0/airstrings-v0.12.0-darwin-arm64.tar.gz"
      sha256 "273124106b6faa014ab8fb4779c1a199036cc6c69e7cea9e28e98b4f74045798"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.12.0/airstrings-v0.12.0-darwin-amd64.tar.gz"
      sha256 "a9f3199efc76625f015fc3044b5a70c35f78cc66d7ffedc9949e0e984187af4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.12.0/airstrings-v0.12.0-linux-arm64.tar.gz"
      sha256 "8671512ac1873be396532658d3d41d44b6f96693984d75aa8a7a91e3c3be416b"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.12.0/airstrings-v0.12.0-linux-amd64.tar.gz"
      sha256 "65e39145cca0571b8c7bcb0a23bf25b617c407a9827f09d4c1a1628b8ae83a00"
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
