class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.14.0/kheeper_v0.14.0_darwin_arm64.tar.gz"
      sha256 "0db7c9ff45d8e51d7673929e8aae170b121891f61db70343939a02932422a46b"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.14.0/kheeper_v0.14.0_darwin_amd64.tar.gz"
      sha256 "dfc5120400a5a51ee8cf9f9eec3d209854ab60699adc2faa333c5f95bf6d3aaf"
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
