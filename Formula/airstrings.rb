class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.0/airstrings-v0.3.0-darwin-arm64.tar.gz"
      sha256 "8b23cedea7ee3622e1e9b0c52ce461e5f881e5aee61fed20534b7eaadcb5cbaf"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.0/airstrings-v0.3.0-darwin-amd64.tar.gz"
      sha256 "061bf83760885972216f2e2f0dfad0ad719fb0ddde5692aa62ffb62bff784379"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.0/airstrings-v0.3.0-linux-arm64.tar.gz"
      sha256 "49b6ca0e569a0d77d67726a274f6b0be2b8764f25328f5d0bc3a88723c24d695"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.0/airstrings-v0.3.0-linux-amd64.tar.gz"
      sha256 "478614bc2f1043e430ca0aad929c83e6fc5d27e351c6dadba08ec7b249d4bf7a"
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
