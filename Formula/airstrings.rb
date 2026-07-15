class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.5/airstrings-v0.13.5-darwin-arm64.tar.gz"
      sha256 "41d08153236e01d3f1605446ca09d19a13439a07d68c5c81914fe7709db2344b"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.5/airstrings-v0.13.5-darwin-amd64.tar.gz"
      sha256 "68a46c7c27fab453d29d33b6889bb07a94d75f0126c45d1b64d32b61e22156b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.5/airstrings-v0.13.5-linux-arm64.tar.gz"
      sha256 "bcc6c326ad8fc47d79569aecd969f0d744a861f3deaadec664a7a3599889a71d"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.5/airstrings-v0.13.5-linux-amd64.tar.gz"
      sha256 "235a35a98fa69ba7e49529444a01f7ca58d9c262e9970a2f5f02f51daf6026b9"
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
