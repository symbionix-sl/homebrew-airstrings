class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.1/airstrings-v0.3.1-darwin-arm64.tar.gz"
      sha256 "ebaaf8d6506641fe368bc71632dcb9e594d7e6cdc47fa9e239977bba3987a91b"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.1/airstrings-v0.3.1-darwin-amd64.tar.gz"
      sha256 "c1db4abcca6781d47f8ee144be97e63318ed148401c78f1e10c7473f58814f3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.1/airstrings-v0.3.1-linux-arm64.tar.gz"
      sha256 "1085024f42f0618133fabcfc767667bb604ee10cb097b2d1999940d0203afcf2"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.1/airstrings-v0.3.1-linux-amd64.tar.gz"
      sha256 "0f3b5e60b20a52d834abfdf726c8661e462f33675531619a14a47504619a96f7"
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
