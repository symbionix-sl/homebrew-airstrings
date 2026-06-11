class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.6.0/airstrings-v0.6.0-darwin-arm64.tar.gz"
      sha256 "d538107715da612d58e48baf273b4847cfe2b8142bd2cb16a842025926c618ba"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.6.0/airstrings-v0.6.0-darwin-amd64.tar.gz"
      sha256 "d65f0ab0f70f6113ffcd7afd472f7541f8614335e28f8c9bb249b6c00750fffc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.6.0/airstrings-v0.6.0-linux-arm64.tar.gz"
      sha256 "bab668853795979b6dd5c5ebdef353998ab78da722d93112e752e7a7c639bace"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.6.0/airstrings-v0.6.0-linux-amd64.tar.gz"
      sha256 "9e643e71221524562699286e6a270dda0fc3d80f09230b793c72924b866187f6"
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
