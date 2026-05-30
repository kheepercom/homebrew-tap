class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.0/kheeper_v0.11.0_darwin_arm64.tar.gz"
      sha256 "4385348fe4399000d98bc6e16f2058880198ccfdbd722bddc785f5e1e2fcda1a"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.0/kheeper_v0.11.0_darwin_amd64.tar.gz"
      sha256 "6d689bff1a04be71577c339eb4c010f056b0a1f629286171b6dc93def5ba2c94"
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
