class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.0/airstrings-v0.22.0-darwin-arm64.tar.gz"
      sha256 "4c87f3d33b8ac9e05280e70865662e8a009a6dd5e172d24a2a32a95f16f3aaa9"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.0/airstrings-v0.22.0-darwin-amd64.tar.gz"
      sha256 "1b308234a4dfcc408e233e32cdf3f144829be5be25176be2786f55d94e181fc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.0/airstrings-v0.22.0-linux-arm64.tar.gz"
      sha256 "3c79264f53742a9f9d14b773641b6ead8df61fb8b1251df7f065259a267d2c8e"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.22.0/airstrings-v0.22.0-linux-amd64.tar.gz"
      sha256 "9a13e6b3cdd70cd3bfa612f83ac4c0b49349f798faeaf9995bf571458e37c5a7"
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
