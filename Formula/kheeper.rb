class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.15.0/kheeper_v0.15.0_darwin_arm64.tar.gz"
      sha256 "d62f7fe854ed4b0ccf0353aea34eecbf499f396f2a29525caf27506e7797f0a8"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.15.0/kheeper_v0.15.0_darwin_amd64.tar.gz"
      sha256 "e4dc1091d8a76934a4810fba9111d255132865c9cb308134a13eb603bfe6fa5f"
    end
  end

  def install
    bin.install "kheeper"
    bin.install "docker-credential-kheeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kheeper --version")
  end
end
