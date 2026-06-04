class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.2/kheeper_v0.12.2_darwin_arm64.tar.gz"
      sha256 "fd36f939820e3e58faf8dfbd18cbeea1b7df4937abcd95ac2c0c59ad77d8fb3d"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.2/kheeper_v0.12.2_darwin_amd64.tar.gz"
      sha256 "433cebf5327b7c4141c03b366c09edc7e6ab5b59d5e1568530153e6b476f77d4"
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
