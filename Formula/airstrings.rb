class Airstrings < Formula
  desc "CLI for the AirStrings remote string management platform"
  homepage "https://airstrings.com"
  version "0.13.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.7/airstrings-v0.13.7-darwin-arm64.tar.gz"
      sha256 "fc360a9dd33894ff4757b65af999c72ab74706652bb7d4588a42831c852ebe58"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.7/airstrings-v0.13.7-darwin-amd64.tar.gz"
      sha256 "e42597a0305fcdb1c4278ef8d1c4e690de9d8edf6ee533da4b6f9871c54ea164"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.7/airstrings-v0.13.7-linux-arm64.tar.gz"
      sha256 "c19638e118665095a0757fc540945056de05d15618eab9fa34278d7bb76a1bf1"
    else
      url "https://github.com/symbionix-sl/homebrew-airstrings/releases/download/v0.13.7/airstrings-v0.13.7-linux-amd64.tar.gz"
      sha256 "374e81bf44493b4a676396ef6404658038f21cf932829eeff1bbb91abf9cb59b"
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
