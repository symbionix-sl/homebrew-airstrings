class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.2/airstrings-v0.13.2-darwin-arm64.tar.gz"
      sha256 "a46157d2344382e1ebee0753585d0548602e3539ff710f0296d1a0874060d30c"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.2/airstrings-v0.13.2-darwin-amd64.tar.gz"
      sha256 "5647a5559acf628e94f42f8e93bc46761bbd7c4c608a5c53a504bc0496ebbbdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.2/airstrings-v0.13.2-linux-arm64.tar.gz"
      sha256 "a0c28eb14ac8be34b2be64b8dc36456a8f9882fd3be47d1016e79f020c94412a"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.2/airstrings-v0.13.2-linux-amd64.tar.gz"
      sha256 "56bc96c74f0699fd40e738d9b248f9fd79ed4cae38c8331bb1d9f317355f4781"
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
