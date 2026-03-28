class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.2/airstrings-v0.1.2-darwin-arm64.tar.gz"
      sha256 "3e22cd9562966ccacf82dc4860af5338a4b5ad7c794434366653128b7bedf583"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.2/airstrings-v0.1.2-darwin-amd64.tar.gz"
      sha256 "ab515f39d87973f761888b2e6099dbd60245eb49e60e5929deb04a341d0af229"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.2/airstrings-v0.1.2-linux-arm64.tar.gz"
      sha256 "f77ba7ea840549fe6eaa1f7029710d4896098faa36abc2270a09cabf9a193c28"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.1.2/airstrings-v0.1.2-linux-amd64.tar.gz"
      sha256 "ed8319f4e087c0d405a0b948a3ee0680fb3d11ea910a503b4e29813f9661d807"
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
