class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.4/airstrings-v0.3.4-darwin-arm64.tar.gz"
      sha256 "60638e7f80e7d9f3c0a8b4a99b8c67db7a78529c8d7d4ce86ee933f091be555a"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.4/airstrings-v0.3.4-darwin-amd64.tar.gz"
      sha256 "fded6fa693f1c1bb469dac651dee46cf9fe966470d6f4e140135a92603177451"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.4/airstrings-v0.3.4-linux-arm64.tar.gz"
      sha256 "3ca3b872fd51ffd10cff3a7c34b5fe6dd5f045e7d672da3d399258ad125b97af"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.3.4/airstrings-v0.3.4-linux-amd64.tar.gz"
      sha256 "1f60fa6f2953607fa5f0d7fc7978496d87711d329a642b5562abde074d2aabb5"
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
