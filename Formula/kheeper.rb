class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.17.0/kheeper_v0.17.0_darwin_arm64.tar.gz"
      sha256 "edd3505ef4090a6b83b01ff844be3e6b7bd5be0c84b3826c4efbbd5d4b603901"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.17.0/kheeper_v0.17.0_darwin_amd64.tar.gz"
      sha256 "030ac307bbcad340d814afa6762b634383e64eccb530c0cd06c04113308ca300"
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
