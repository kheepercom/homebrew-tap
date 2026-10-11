class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.25.0/kheeper_v0.25.0_darwin_arm64.tar.gz"
      sha256 "bd04d930127b6abfced9b0a3ae0cfc65659e4a182eb3271963c39795bb0a68ad"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.25.0/kheeper_v0.25.0_darwin_amd64.tar.gz"
      sha256 "d3816745d76eb6864cb1a3ad8b9b543d0f20b3f617f6014fc8eecf61e1f0f1aa"
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
