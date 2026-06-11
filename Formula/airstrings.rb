class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.1/airstrings-v0.4.1-darwin-arm64.tar.gz"
      sha256 "1cd762176eef5912d62f57d4cc225cc8567baa3a1ce2107b5a5bd4faf7f96cf1"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.1/airstrings-v0.4.1-darwin-amd64.tar.gz"
      sha256 "71b956b1844890c5f5075a1ffe6fc08075a57fd6875b4840a22aa596e468ff44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.1/airstrings-v0.4.1-linux-arm64.tar.gz"
      sha256 "fb7471dcc379942dc567a42433b2e208133ffb23b21232c5941016918523fb48"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.4.1/airstrings-v0.4.1-linux-amd64.tar.gz"
      sha256 "da887981d85f21f711f762503294037d585e77672c6895c9291fd8907bb62664"
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
