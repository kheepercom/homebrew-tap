class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.1/kheeper_v0.12.1_darwin_arm64.tar.gz"
      sha256 "be0f1a8a46a2d41064f49457cfc21a46de56d8409773c3990bff16af8dd83df7"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.1/kheeper_v0.12.1_darwin_amd64.tar.gz"
      sha256 "2ab58a01119675915a9600d880e1591dd05a436ce14b8a01863c614c3fe10ade"
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
