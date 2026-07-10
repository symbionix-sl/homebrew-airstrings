class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.11.0/airstrings-v0.11.0-darwin-arm64.tar.gz"
      sha256 "e82b43268a5a1f40a59bb6074388f52c70d76f4c4f5b4ea9154251b956cbeecd"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.11.0/airstrings-v0.11.0-darwin-amd64.tar.gz"
      sha256 "07053bb433d51dcbcb58c1f666d1842e02feb7e70e7ad84c7f442ca203edfc32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.11.0/airstrings-v0.11.0-linux-arm64.tar.gz"
      sha256 "fef110dd01bc9fd126b1f3106b2d84e376524214d9edca530ee3b6f6baa5c772"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.11.0/airstrings-v0.11.0-linux-amd64.tar.gz"
      sha256 "78ffe33768f4c426179c5aa75c9db8c71d5f1c99c86a3c18881b68a85339e35e"
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
