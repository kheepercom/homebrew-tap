class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.0/kheeper_v0.26.0_darwin_arm64.tar.gz"
      sha256 "0b5618da2915acfd1d923175b7ed3afaa7326d483f17f500964493345da39a88"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.0/kheeper_v0.26.0_darwin_amd64.tar.gz"
      sha256 "d995d2c8010d36f3a03e3df0e02a4056083b9654c8ce8cc3cd26c7cb4e210ccf"
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
