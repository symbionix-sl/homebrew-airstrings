class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.1/airstrings-v0.17.1-darwin-arm64.tar.gz"
      sha256 "a015aad7cdd990c79ef6d0dd1b77c3f44b3191d20a32ce48c77033d5db250483"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.1/airstrings-v0.17.1-darwin-amd64.tar.gz"
      sha256 "6880adfd2078a0a3a0ed2a03b003ee811ed7003178f94b5ad64676de5c837aef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.1/airstrings-v0.17.1-linux-arm64.tar.gz"
      sha256 "7c86136bd376da6445a780d3321b50c0e33310c1f25f495cad441ed87572bd5c"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.17.1/airstrings-v0.17.1-linux-amd64.tar.gz"
      sha256 "5d094581427516d3d96e02e764b2741ddda003586be98d2d0df8ef95dd5b0d5f"
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
