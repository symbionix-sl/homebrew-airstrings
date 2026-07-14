class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.0/airstrings-v0.13.0-darwin-arm64.tar.gz"
      sha256 "d03c7de4be126d28433e282a72ad288335c214d94121980bf5dfe89b8e32250b"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.0/airstrings-v0.13.0-darwin-amd64.tar.gz"
      sha256 "6ee3cb3bb0c772d9436b434e06a9400d587847d5e3454934c279412abddfa1cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.0/airstrings-v0.13.0-linux-arm64.tar.gz"
      sha256 "4f09d9faa5f8452d323b0b073cd889dfdda8a1bd8feeff4742cebc63fdca1acf"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.0/airstrings-v0.13.0-linux-amd64.tar.gz"
      sha256 "4eee012059df870419d11304aa0000296501b55385939d0deed24c643772e6ea"
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
