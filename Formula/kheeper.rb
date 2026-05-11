class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.7.0/kheeper_v0.7.0_darwin_arm64.tar.gz"
      sha256 "592f85b8e9fd4f6f0d02a07c5e17b6d8abd3c2b199279e53a1af38319c86e08c"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.7.0/kheeper_v0.7.0_darwin_amd64.tar.gz"
      sha256 "db63e4eca9eeef408ed0ba675df6b3919fcedb9954717ced9424f26435ebd51b"
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
